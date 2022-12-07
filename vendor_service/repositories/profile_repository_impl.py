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

characters: List[Character] = [
    Character(str(0), name='Zavala', class_type=ClassType.Titan), 
    Character(str(1), name='Cayde', class_type=ClassType.Hunter), 
    Character(str(2), name='Ikora', class_type=ClassType.Warlock)
    ]

class ProfileRepositoryImpl(ProfileRepository):
    def get_profile(self, api_key: str, token: str, membership: Membership) -> Profile:
        print(api_key)
        print(token)
        print(membership)
        # headers = {"X-API-Key": api_key, "Authorization": token}

        # result = requests.get(f"https://bungie.net/Platform/Destiny2/{membership.membership_type}/Profile/{membership.id}/?components=200", headers=headers)

        # json_response = result.json()['Response']
        # characters_dict: dict = json_response['characters']['data']

        # character_keys = characters_dict.keys()
        #for number in range(3):
            # character_data = characters_dict[key]

        return Profile(characters=characters)

    def add_character(self, name: str, class_type: ClassType) -> Profile:
        characters.append(Character(str(len(characters)), name=name, class_type=class_type))
        return Profile(characters)
        
