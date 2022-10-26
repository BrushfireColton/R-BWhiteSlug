from requests_oauthlib import OAuth2Session


class AuthService:
    session: OAuth2Session = None

    def __init__(self, api_key: str, client_id: str, client_secret: str, auth_url: str):
        self.api_key = api_key
        self.client_id = client_id
        self.client_secret = client_secret
        self.auth_url = auth_url

    def generate_auth_url(self, redirect_url: str) -> str:
        AuthService.session = OAuth2Session(
            client_id=self.client_id, redirect_uri=redirect_url
        )
        return AuthService.session.authorization_url(self.auth_url)

    def get_token(self, token_url: str, redirect_response: str) -> dict:
        return AuthService.session.fetch_token(
            include_client_id=True,
            client_secret=self.client_secret,
            token_url=token_url,
            authorization_response=redirect_response,
        )
