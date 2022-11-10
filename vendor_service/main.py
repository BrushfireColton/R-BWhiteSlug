from fastapi import FastAPI, status, Header, Response
from dotenv import load_dotenv
import requests


load_dotenv()
app = FastAPI()


@app.get("/api/v1/healthz", status_code=status.HTTP_200_OK)
def health_check() -> dict:
    return {"status": "OK"}


@app.get("/api/v1/vendors")
def get_vendors(response: Response, authorization: str | None = Header(default=None)):
    api_key = ''
    auth_token = authorization.split(" ")[1]
    headers = {'X-API-Key': api_key, 'Authorization': auth_token}
    result = requests.get('https://www.bungie.net/Platform/User/GetMembershipsForCurrentUser/', headers=headers)
    return "Hello World"


# Step 1
# Get Destiny 2 Profile. /Destiny2/{membershipType}/Profile/{destinyMembershipId}/
# This will return characters. Need character ID.
