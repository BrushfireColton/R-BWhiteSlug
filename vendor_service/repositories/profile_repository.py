import abc

from domain.membership import Membership
from domain.profile import Profile


class ProfileRepository (metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def get_profile(self, api_key: str, token: str, membership: Membership) -> Profile:
        raise NotImplementedError