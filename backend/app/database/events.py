from aiomysql.connection import Connection
from ..models.events import EventData


async def addEvent(event_data: EventData, event_img, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""INSERT INTO Events (Name, Description, Photo, Address, Location, ScheduledOn, Capacity, Available) 
                                    VALUES (%s, %s, %s, %s, Point(%s, %s), %s, %s, %s)""",
                                 (event_data.name, event_data.description, event_img, event_data.address, event_data.longitude, event_data.latitude, event_data.scheduled_on, event_data.capacity, event_data.capacity))
            await conn.commit()
        except Exception as err:
            print(err)

        await cursor.close()


async def getEvents(conn):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""SELECT EventId, Name, Description, Photo, Address, ST_Y(Location) AS latitude, ST_X(Location) AS longitude, 
                                    ScheduledOn, Capacity, Available 
                                    FROM Events""")
            events = await cursor.fetchall()
        except Exception as err:
            print(err)

        await cursor.close()

    return events


async def getEventsByLocation(latitude: float, longitude: float, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""SELECT EventId, Name, Description, Photo, Address, ScheduledOn, Capacity, Available, 
                                    (ST_Distance_Sphere(Location, Point(%s, %s))) AS distance
                                    FROM Events WHERE Available > 0 AND ScheduledOn > NOW() ORDER BY distance ASC""", (longitude, latitude))
            events = await cursor.fetchall()
        except Exception as err:
            print(err)

        await cursor.close()

    return events


async def bookEvent(event_id: int, user_id: str, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""INSERT INTO EventBooking
                                    (EventId, UserId)
                                    VALUES (%s, %s)""",
                                 (event_id, user_id))
            await cursor.execute("""UPDATE Events 
                                    SET Available = Available - 1 
                                    WHERE EventId = %s""",
                                 (event_id))
            await conn.commit()
        except Exception as err:
            print(err)

        await cursor.close()


async def getUserEvents(user_id: str, conn: Connection):
    async with conn.cursor() as cursor:
        try:
            await cursor.execute("""SELECT Events.EventId, Name, Description, Photo, Address, ScheduledOn
                                    FROM Events, EventBooking as bookings
                                    WHERE Events.EventId = bookings.EventId AND bookings.UserId = %s""",
                                 user_id)
            user_events = await cursor.fetchall()
        except Exception as err:
            print(err)

        await cursor.close()

    return user_events
