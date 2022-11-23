# Step 1
# Get Destiny 2 Profile. /Destiny2/{membershipType}/Profile/{destinyMembershipId}/
# This will return characters. Need character ID.

import requests
from typing import List
from domain.character import Character
from domain.class_type import ClassType
from domain.membership import Membership
from domain.profile import Profile
from repositories.profile_repository import ProfileRepository


class ProfileRepositoryImpl(ProfileRepository):
    def get_profile(self, api_key: str, token: str, membership: Membership) -> Profile:
        print(api_key)
        print(token)
        print(membership)
        # headers = {"X-API-Key": api_key, "Authorization": token}

        # result = requests.get(f"https://bungie.net/Platform/Destiny2/{membership.membership_type}/Profile/{membership.id}/?components=200", headers=headers)

        # json_response = result.json()['Response']
        # characters_dict: dict = json_response['characters']['data']
        characters: List[Character] = []

        # character_keys = characters_dict.keys()
        for number in range(3):
            # character_data = characters_dict[key]
            characters.append(Character(str(number), class_type=ClassType.Titan))

        return Profile(characters=characters)
