from domain.class_type import ClassType


class Character:
    def __init__(self, id: str, name: str, class_type: ClassType) -> None:
        self.id = id
        self.class_type = class_type
        self.name = name

    def __dict__(self) -> dict:
        return{
            "characterId": self.id,
            "name": self.name,
            "classType": self.class_type
        }

    def toJson(self) -> dict:
        return self.__dict__()
