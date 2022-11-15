from domain.class_type import ClassType


class Character:
    def __init__(
        self,
        id: str,
        class_type: ClassType
    ) -> None:
        self.id = id
        self.class_type = class_type

    def __dict__(self) -> dict:
        return{
            "characterId": self.id,
            "classType": self.class_type
        }

    def toJson(self) -> dict:
        return self.__dict__()