from repositories.membership_repository import MembershipRepository
from repositories.membership_repository_impl import MembershipRepositoryImpl
from repositories.profile_repository import ProfileRepository
from repositories.profile_repository_impl import ProfileRepositoryImpl
from services.membership_service import MembershipService
from services.membership_service_impl import MembershipServiceImpl



def get_membership_repository() -> MembershipRepository:
    return MembershipRepositoryImpl()


def get_membership_service() -> MembershipService:
    return MembershipServiceImpl(membership_repository=get_membership_repository())

def get_profile_repository() -> ProfileRepository:
    return ProfileRepositoryImpl()

