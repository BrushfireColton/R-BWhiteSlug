import abc

from domain.membership import Membership


class ProfileRepository(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def get_profile(self, api_key: str, token: str, membership: Membership):
        raise NotImplementedError
