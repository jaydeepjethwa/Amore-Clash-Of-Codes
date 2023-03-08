from aiomysql.connection import Connection
from ..models.users import UserInterests


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


# async def getCurrentDate(user_id: str, conn: Connection):
#     async with conn.cursor() as cursor:
#         try:
#             await cursor.execute("""SELECT UserId1, UserId2 FROM UserInteraction WHERE DATEDIFF(StartTime, NOW()) <= 1
#                                     AND (UserId1 = %s OR UserId2 = %s)""", (user_id, user_id))
#             user = await cursor.fetchone()
#         except Exception as err:
#             print(err)

#         await cursor.close()

#     return user


async def getOppositeUsers(user_id: str, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""SELECT * FROM UserInterests WHERE UserId = %s""", (user_id))
            user_data = await cursor.fetchone()

            # await cursor.execute("""SELECT UserId, Gender, About, Type, Creativity, Sports, StayingIn, GoingOut, Travelling, Music, FoodDrinks
            #                         FROM UserInterests, UserInteraction as interaction
            #                         WHERE UserId <> %s AND Gender <> %s AND UserId NOT IN (SELECT UserId1 FROM UserInteraction WHERE UserId2 = %s AND DATEDIFF(StartTime, NOW()) <= 7)
            #                         AND UserId NOT IN (SELECT UserId2 FROM UserInteraction WHERE UserId1 = %s AND DATEDIFF(StartTime, NOW()) <= 7)""",
            #                      (user_id, user_data["Gender"], user_id, user_id))
            await cursor.execute("""SELECT UserId, Gender, About, Type, Creativity, Sports, StayingIn, GoingOut, Travelling, Music, FoodDrinks
                                    FROM UserInterests
                                    WHERE UserId <> %s AND Gender <> %s AND (UserId NOT IN
                                    (SELECT UserId1 FROM UserInteraction WHERE UserId2 = %s AND DATEDIFF(StartTime, NOW()) <= 7
                                    AND DATEDIFF(StartTime, NOW()) > 1)) OR (UserId NOT IN (SELECT UserId2 FROM UserInteraction WHERE
                                    UserId1 = %s AND DATEDIFF(StartTime, NOW()) <= 7 AND DATEDIFF(StartTime, NOW()) > 1))""",
                                 (user_id, user_data["Gender"], user_id, user_id))
            other_users = await cursor.fetchall()

        except Exception as err:
            print(err)

        await cursor.close()

    return user_data, other_users


async def getEventUsers(event_id: str, user_id: str, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""SELECT * FROM UserInterests WHERE UserId = %s""", (user_id))
            user_data = await cursor.fetchone()

            await cursor.execute("""SELECT * 
                                    FROM UserInterests 
                                    WHERE Gender <> %s AND UserId <> %s AND UserId IN (SELECT UserId FROM EventBooking WHERE EventId = %s AND Present = TRUE)""",
                                 (user_data["Gender"], user_id, event_id))
            other_users = await cursor.fetchall()

        except Exception as err:
            print(err)

        await cursor.close()

    return user_data, other_users


async def makeInteraction(user_id1: str, user_id2: str, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""INSERT INTO UserInteraction (UserId1, UserId2) VALUES(%s, %s)""", (user_id1, user_id2))
            await conn.commit()
        except Exception as err:
            print(err)

        await cursor.close()


async def deactivateInteraction(user_id1: str, user_id2: str, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""UPDATE UserInteraction SET StartTime = NOW() - INTERVAL 2 DAY WHERE (UserId1 = %s AND UserId2 = %s) 
                                    OR (UserId1 = %s AND UserId2 = %s)""", (user_id1, user_id2, user_id2, user_id1))
            await conn.commit()
        except Exception as err:
            print(err)

        await cursor.close()
