from fastapi import APIRouter, UploadFile, Body, Depends
from aiomysql.connection import Connection
from ..models.hotels import HotelData
from ..database import Database
from ..database.hotels import addHotel, getHotels, getHotelsByLocation, bookHotel, dateScheduled
import base64

hotel_router = APIRouter()


@hotel_router.post("/")
async def add_hotel(hotel_img: UploadFile,
                    name: str = Body(...),
                    description: str = Body(...),
                    address: str = Body(...),
                    latitude: float = Body(...), longitude: float = Body(...),
                    conn: Connection = Depends(Database.get_db)):

    hotel_img = base64.b64encode(await hotel_img.read())
    hotel_data = HotelData(name=name, description=description,
                           address=address, latitude=latitude, longitude=longitude)

    await addHotel(hotel_data, hotel_img, conn)

    return {
        "message": "Success"
    }


@hotel_router.get("/")
async def get_hotels(conn: Connection = Depends(Database.get_db)):
    hotels = await getHotels(conn)

    return hotels


@hotel_router.get("/nearby")
async def get_nearby_hotels(latitude: float, longitude: float, conn: Connection = Depends(Database.get_db)):
    events = await getHotelsByLocation(latitude, longitude, conn)

    return events


@hotel_router.post("/book")
async def book_hotel(hotel_id: int = Body(...),
                     user_id1: str = Body(...), user_id2: str = Body(...),
                     scheduled_on: str = Body(...),
                     conn: Connection = Depends(Database.get_db)):
    await bookHotel(hotel_id, user_id1, user_id2, scheduled_on, conn)

    return {
        "message": "Success"
    }


@hotel_router.get("/{user_id}")
async def get_scheduled_date(user_id: str, conn: Connection = Depends(Database.get_db)):
    date = await dateScheduled(user_id, conn)

    return date
