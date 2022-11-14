class Membership:
    def __init__(
        self,
        id: str,
        primary_membership_id: str,
        display_name: str,
        membership_type: int,
    ) -> None:
        self.id = id
        self.primary_membership_id = primary_membership_id
        self.display_name = display_name
        self.membership_type = membership_type

    def __dict__(self) -> dict:
        return {
            "id": self.id,
            "primary_membership_id": self.primary_membership_id,
            "display_name": self.display_name,
            "membership_type": self.membership_type,
        }

    def toJson(self) -> dict:
        return self.__dict__()
