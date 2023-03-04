from aiomysql.connection import Connection
from ..models.user_interests import UserInterests


async def addUser(user_id: str, gender: str, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""INSERT INTO UserInterests 
                                    (UserId, Gender)
                                    VALUES (%s, %s)""",
                                 (user_id, gender))
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

# UserID VARCHAR(200) PRIMARY KEY,
#     Gender VARCHAR(10),
#     Type VARCHAR(20),
#     Creativity TEXT,
#     Sports TEXT,
#     StayingIn TEXT,
#     GoingOut TEXT,
#     Travelling TEXT,
#     Music TEXT,
#     FoodDrinks TEXT
