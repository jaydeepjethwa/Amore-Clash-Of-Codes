from fastapi import APIRouter, Body, Depends
from aiomysql.connection import Connection
from ..models.users import UserInterests
from ..database import Database
from ..database.users import addUser, addInterests, getOppositeUsers, getEventUsers, makeInteraction, deactivateInteraction
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
    # user_data = await getCurrentDate(user_id, conn)
    # if user_data:
    #     if user_data["UserId1"] == user_id:
    #         data = [{
    #             "user_id": user_data["UserId2"],
    #             "start_time": user_data["StartTime"] if 'StartTime' in user_data else None,
    #             "score": 90
    #         }]
    #         print(data)
    #         return data

    # else:
    user_data, other_users = await getOppositeUsers(user_id, conn)
    user_prof, others_df = preprocessing(user_data, other_users)
    matches = findProfileMatch(user_prof, others_df)
    print(matches)
    return matches.to_dict('records')


@user_router.get("/{user_id}/{event_id}/matches")
async def find_event_matches(user_id: str, event_id: int, conn: Connection = Depends(Database.get_db)):
    user_data, other_users = await getEventUsers(event_id, user_id, conn)

    user_prof, others_df = preprocessing(user_data, other_users)
    matches = findProfileMatch(user_prof, others_df)

    return matches.to_dict('records')


@user_router.post("/interact")
async def make_interaction(user_id1: str = Body(...), user_id2: str = Body(...), conn: Connection = Depends(Database.get_db)):
    await makeInteraction(user_id1, user_id2, conn)

    return {
        "message": "Success"
    }


@user_router.post("/deactivate")
async def deactivate_interaction(user_id1: str = Body(...), user_id2: str = Body(...), conn: Connection = Depends(Database.get_db)):
    await deactivateInteraction(user_id1, user_id2, conn)

    return {
        "message": "Success"
    }
