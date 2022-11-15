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
<<<<<<< HEAD
    def get_profile(self, api_key: str, token: str, membership: Membership) -> Profile:
        headers = {"X-API-Key": api_key, "Authorization": token}

        result = requests.get(f"https://bungie.net/Platform/Destiny2/{membership.membership_type}/Profile/{membership.id}/?components=200")

        json_response = result.json()['Response']
        characters_dict: dict = json_response['characters']['data']
        characters: List[Character] = []

        for key, value in characters_dict:
            characters.append(Character(key, ClassType(int(value['classType']))))

        return Profile(characters=characters)
=======
    pass
>>>>>>> bd8f594275565377e01d1c54c7b3996b87f3433a
