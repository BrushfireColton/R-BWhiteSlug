from typing import List

import requests
from domain.membership import Membership
from repositories.membership_repository import MembershipRepository


class MembershipRepositoryImpl(MembershipRepository):
    def get_memberships(self, api_key: str, token: str) -> List[Membership]:

        # headers = {"X-API-Key": api_key, "Authorization": token}
        # result = requests.get(
        #     "https://www.bungie.net/Platform/User/GetMembershipsForCurrentUser/",
        #     headers=headers,
        # )

        # json_data = result.json()["Response"]

        # primary_membership_id = json_data["primaryMembershipId"] if "primaryMembershipId" in json_data else None
        

        # return list(
        #     map(
        #         lambda membership: Membership(
        #             id=membership["membershipId"],
        #             primary_membership_id=primary_membership_id,
        #             display_name=membership["displayName"],
        #             membership_type=membership["membershipType"],
        #         ),
        #         json_data["destinyMemberships"],
        #     )
        # )

        return [
            Membership('best', '466546', 'King', 852)
        ]
