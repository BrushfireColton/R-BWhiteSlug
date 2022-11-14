from fastapi import Depends, FastAPI, status, Header
from dotenv import load_dotenv
import os
from di import get_membership_service

from services.membership_service import MembershipService

load_dotenv()
app = FastAPI()


@app.get("/api/v1/healthz", status_code=status.HTTP_200_OK)
def health_check() -> dict:
    return {"status": "OK"}


@app.get("/api/v1/vendors")
def get_vendors(
    authorization: str | None = Header(default=None),
    membership_service: MembershipService = Depends(get_membership_service),
):
    api_key = os.getenv(
        "API_KEY"
    )  # Need to add .env file to vendor_service with your API_KEY

    result = membership_service.get_primary_membership(api_key, authorization)

    return result.toJson()


# Step 1
# Get Destiny 2 Profile. /Destiny2/{membershipType}/Profile/{destinyMembershipId}/
# This will return characters. Need character ID.
