from aiomysql.connection import Connection
from ..models.hotels import HotelData


async def addHotel(hotel_data: HotelData, hotel_img, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""INSERT INTO Hotels (Name, Description, Photo, Address, Location) 
                                VALUES (%s, %s, %s, %s, Point(%s, %s))""",
                                 (hotel_data.name, hotel_data.description, hotel_img, hotel_data.address, hotel_data.longitude, hotel_data.latitude))
            await conn.commit()
        except Exception as err:
            print(err)

        await cursor.close()


async def getHotels(conn):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""SELECT Name, Description, Photo, Address, ST_Y(Location) AS latitude, ST_X(Location) AS longitude FROM Hotels""")
            hotels = await cursor.fetchall()
        except Exception as err:
            print(err)

        await cursor.close()

    return hotels


async def getHotelsByLocation(latitude: float, longitude: float, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""SELECT HotelId, Name, Description, Address, Photo,
                                    (ST_Distance_Sphere(Location, Point(%s, %s))) AS distance
                                    FROM Hotels ORDER BY distance ASC""", (longitude, latitude))
            events = await cursor.fetchall()
        except Exception as err:
            print(err)

        await cursor.close()

    return events


async def bookHotel(hotel_id: int, user_id1: str, user_id2, scheduled_on: str, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""INSERT INTO HotelBooking
                                    (HotelId, UserId1, UserId2, ScheduledOn)
                                    VALUES (%s, %s, %s, %s)""",
                                 (hotel_id, user_id1, user_id2, scheduled_on))
            await conn.commit()
        except Exception as err:
            print(err)

        await cursor.close()


async def dateScheduled(user_id: int, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""SELECT Hotels.HotelId, Name, Description, Photo, Address, ScheduledOn
                                    FROM HotelBooking AS booking, Hotels
                                    WHERE (booking.UserId1 = %s OR booking.UserId2 = %s) AND Hotels.HotelId = booking.HotelId
                                    ORDER BY ScheduledOn DESC LIMIT 1""")
            date = await cursor.fetchone()
        except Exception as err:
            print(err)

        await cursor.close()

    return date
