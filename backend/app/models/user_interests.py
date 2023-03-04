from pydantic import BaseModel


class UserInterests(BaseModel):
    user_id: str
    type: str
    creativity: str
    sports: str
    staying_in: str
    going_out: str
    travelling: str
    music: str
    food_drinks: str
