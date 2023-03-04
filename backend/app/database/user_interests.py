from aiomysql.connection import Connection
from ..models.user_interests import UserInterests


async def addUser(user_id: str, gender: str, about: str, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""INSERT INTO UserInterests 
                                    (UserId, Gender, About)
                                    VALUES (%s, %s, %s)""",
                                 (user_id, gender, about))
            await conn.commit()
        except Exception as err:
            print(err)

        await cursor.close()


async def addInterests(interest: UserInterests, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""UPDATE UserInterests
                                    SET Type = %s, Creativity = %s, Sports = %s, StayingIn = %s, GoingOut = %s,
                                    Travelling = %s, Music = %s, FoodDrinks = %s WHERE UserId = %s""",
                                 (interest.type, interest.creativity, interest.sports, interest.staying_in,
                                     interest.going_out, interest.travelling, interest.music, interest.food_drinks, interest.user_id))
            await conn.commit()
        except Exception as err:
            print(err)

        await cursor.close()


async def getOppositeUsers(user_id: str, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""SELECT * FROM UserInterests WHERE UserId = %s""", (user_id))
            user_data = await cursor.fetchone()

            await cursor.execute("""SELECT * 
                                    FROM UserInterests 
                                    WHERE UserId <> %s AND Gender <> %s""",
                                 (user_id, user_data["Gender"]))
            other_users = await cursor.fetchall()

        except Exception as err:
            print(err)

        await cursor.close()

    return user_data, other_users
