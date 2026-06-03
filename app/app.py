import os
import uuid
from flask import Flask, request, jsonify
from azure.cosmos import CosmosClient, exceptions

app = Flask(__name__)

# Fetch connection credentials from environment variables
COSMOS_ENDPOINT = os.environ.get("COSMOS_ENDPOINT")
COSMOS_KEY = os.environ.get("COSMOS_KEY")
DATABASE_NAME = os.environ.get("COSMOS_DATABASE", "app-db")
CONTAINER_NAME = os.environ.get("COSMOS_CONTAINER", "users")

container = None

if COSMOS_ENDPOINT and COSMOS_KEY:
    try:
        client = CosmosClient(COSMOS_ENDPOINT, credential=COSMOS_KEY)
        database = client.get_database_client(DATABASE_NAME)
        container = database.get_container_client(CONTAINER_NAME)
        print("Cosmos DB connection initialized successfully.")
    except Exception as e:
        print(f"Failed to initialize Cosmos DB client: {e}")
else:
    print("Cosmos DB credentials not found in environment variables.")

@app.route('/health', methods=['GET'])
def health():
    return jsonify({"status": "running", "cosmos_connected": container is not None}), 200

@app.route('/users', methods=['GET'])
def get_users():
    if not container:
        return jsonify({"error": "Database not initialized"}), 500
    try:
        # Query all items in the container
        query = "SELECT * FROM c"
        items = list(container.query_items(query=query, enable_cross_partition_query=True))
        # Filter out metadata attributes
        users = []
        for item in items:
            users.append({
                "id": item.get("id"),
                "name": item.get("name"),
                "email": item.get("email")
            })
        return jsonify(users), 200
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route('/users', methods=['POST'])
def create_user():
    if not container:
        return jsonify({"error": "Database not initialized"}), 500
    data = request.get_json()
    if not data or not data.get("name") or not data.get("email"):
        return jsonify({"error": "Missing required fields (name, email)"}), 400
    
    user_id = str(uuid.uuid4())
    user_item = {
        "id": user_id,
        "name": data["name"],
        "email": data["email"]
    }
    
    try:
        container.create_item(body=user_item)
        return jsonify(user_item), 201
    except exceptions.CosmosHttpResponseError as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
