import abc
from domain.membership import Membership

from repositories.membership_repository import MembershipRepository


class MembershipService(metaclass=abc.ABCMeta):
    def __init__(self, membership_repository: MembershipRepository) -> None:
        raise NotImplementedError

    def get_primary_membership(self, api_key: str, token: str) -> Membership:
        raise NotImplementedError
