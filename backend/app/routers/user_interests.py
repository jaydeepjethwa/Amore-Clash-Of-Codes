from fastapi import APIRouter, UploadFile, Body, Depends
from aiomysql.connection import Connection
from ..models.user_interests import UserInterests
from ..database import Database
from ..database.user_interests import addUser, addInterests


user_router = APIRouter()


@user_router.post("/")
async def add_user(user_id: str = Body(...), gender: str = Body(...), conn: Connection = Depends(Database.get_db)):
    await addUser(user_id, gender, conn)

    return {
        "message": "Success"
    }


@user_router.post("/interests")
async def add_user_interests(interest: UserInterests, conn: Connection = Depends(Database.get_db)):
    await addInterests(interest, conn)

    return {
        "message": "Success"
    }
