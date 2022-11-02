from fastapi import FastAPI, status, Header, Response
from dotenv import load_dotenv


load_dotenv()
app = FastAPI()


@app.get("/api/v1/healthz", status_code=status.HTTP_200_OK)
def health_check() -> dict:
    return {"status": "OK"}


@app.get("/api/v1/validate")
def validate_request(
    response: Response, authorization: str | None = Header(default=None)
):
    result: dict = {"authorized": True}

    if authorization is None:
        response.status_code = status.HTTP_401_UNAUTHORIZED
        result["authorized"] = False

    return result
