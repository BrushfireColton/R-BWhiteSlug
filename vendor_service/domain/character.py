from domain.class_type import ClassType


class Character:
    def __init__(self, id: str, class_type: ClassType) -> None:
        self.id = id
        self.class_type = class_type
<<<<<<< HEAD

    def __dict__(self) -> dict:
        return{
            "characterId": self.id,
            "classType": self.class_type
        }

    def toJson(self) -> dict:
        return self.__dict__()
=======
>>>>>>> bd8f594275565377e01d1c54c7b3996b87f3433a
