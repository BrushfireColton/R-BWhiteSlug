from fastapi import FastAPI, Depends, Request, status
from dotenv import load_dotenv
import os
from auth_service import AuthService
from di_container import create_auth_service

load_dotenv()
app = FastAPI()


@app.get("/api/v1/healthz", status_code=status.HTTP_200_OK)
def health_check():
    return {"status": "OK"}


@app.post("/get_token")
async def get_token(
    request: Request, auth_service: AuthService = Depends(create_auth_service)
):
    request_body = await request.json()
    redirect_response = request_body["redirect_response"]
    return auth_service.get_token(
        os.getenv("TOKEN_URL"), redirect_response=redirect_response
    )
