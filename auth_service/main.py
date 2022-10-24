import uvicorn
from fastapi import FastAPI, Depends, Request
from dotenv import load_dotenv
import os
from auth_service import AuthService
from di_container import create_auth_service

load_dotenv()
app = FastAPI()


@app.get('/auth_url')
def get_auth_url(auth_service: AuthService = Depends(create_auth_service)):
    return auth_service.generate_auth_url(os.getenv('REDIRECT_URL'))

@app.post('/get_token')
async def get_token(request: Request, auth_service: AuthService = Depends(create_auth_service)):
    request_body = await request.json()
    redirect_response = request_body['redirect_response']
    return auth_service.get_token(os.getenv('TOKEN_URL'), redirect_response=redirect_response)

if __name__ == '__main__':
    uvicorn.run(app, host='0.0.0.0', port = 8000)