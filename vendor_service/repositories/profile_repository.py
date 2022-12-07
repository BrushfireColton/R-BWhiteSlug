import abc
from domain.class_type import ClassType

from domain.membership import Membership
from domain.profile import Profile


class ProfileRepository(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def get_profile(self, api_key: str, token: str, membership: Membership) -> Profile:
        raise NotImplementedError

    @abc.abstractmethod
    def add_character(self, name: str, class_type: ClassType) -> Profile:
        raise NotImplementedError
