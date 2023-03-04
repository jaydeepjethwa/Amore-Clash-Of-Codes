from fastapi import APIRouter, Body, Depends
from aiomysql.connection import Connection
from ..models.user_interests import UserInterests
from ..database import Database
from ..database.user_interests import addUser, addInterests, getOppositeUsers
from ..utils.data_preparation import preprocessing
from ..utils.profile_matching import findProfileMatch


user_router = APIRouter()


@user_router.post("/")
async def add_user(user_id: str = Body(...), gender: str = Body(...), about: str = Body(...), conn: Connection = Depends(Database.get_db)):
    await addUser(user_id, gender, about, conn)

    return {
        "message": "Success"
    }


@user_router.post("/interests")
async def add_user_interests(interest: UserInterests, conn: Connection = Depends(Database.get_db)):
    await addInterests(interest, conn)

    return {
        "message": "Success"
    }


@user_router.get("/{user_id}/matches")
async def find_matches(user_id: str, conn: Connection = Depends(Database.get_db)):
    user_data, other_users = await getOppositeUsers(user_id, conn)

    user_prof, others_df = preprocessing(user_data, other_users)
    matches = findProfileMatch(user_prof, others_df)

    return matches.to_dict('records')
