import abc
from typing import List

from domain.membership import Membership


class MembershipRepository(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def get_memberships(self, api_key: str, token: str) -> List[Membership]:
        raise NotImplementedError
