from domain.membership import Membership
from repositories.membership_repository_impl import MembershipRepositoryImpl
from services.membership_service import MembershipService


class MembershipServiceImpl(MembershipService):
    def __init__(self, membership_repository: MembershipRepositoryImpl) -> None:
        self.membership_repository = membership_repository

    def get_primary_membership(self, api_key: str, token: str) -> Membership:
        memberships = self.membership_repository.get_memberships(api_key, token)
        return next(x for x in memberships if x.id == x.primary_membership_id)
