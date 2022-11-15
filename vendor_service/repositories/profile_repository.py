import abc

from domain.membership import Membership
from domain.profile import Profile


class ProfileRepository(metaclass=abc.ABCMeta):
    @abc.abstractmethod
<<<<<<< HEAD
    def get_profile(self, api_key: str, token: str, membership: Membership) -> Profile:
        raise NotImplementedError
=======
    def get_profile(self, api_key: str, token: str, membership: Membership):
        raise NotImplementedError
>>>>>>> bd8f594275565377e01d1c54c7b3996b87f3433a
