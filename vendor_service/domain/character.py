from domain.class_type import ClassType


class Character:
    def __init__(
        self,
        id: str,
        class_type: ClassType
    ) -> None:
        self.id = id
        self.class_type = class_type