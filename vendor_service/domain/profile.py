from typing import List

from domain.character import Character


class Profile:
    def __init__(
        self,
        characters: List[Character]
    ) -> None:
        self.characters = characters

    def __dict__(self) -> dict:
        return{
            "characters": [character.toJson() for character in self.characters]
        }

    def toJson(self) -> dict:
        return self.__dict__()

        ## finish domain objects
        ## implement bungie api query to get profile
        ## BONUS
        ## implement api route that you can call from postmen 
        ## vendor route ** main.py