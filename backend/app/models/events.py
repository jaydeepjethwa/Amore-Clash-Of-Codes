from pydantic import BaseModel


class EventData(BaseModel):
    name: str
    description: str
    address: str
    latitude: float
    longitude: float
    scheduled_on: str
    capacity: int
