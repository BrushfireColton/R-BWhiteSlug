import os
from auth_service import AuthService

def create_auth_service():
    return AuthService(api_key=os.getenv('API_KEY'), client_id=os.getenv('CLIENT_ID'), client_secret=os.getenv('CLIENT_SECRET'), auth_url=os.getenv('AUTH_URL'))