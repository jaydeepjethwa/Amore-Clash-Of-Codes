import aiomysql


class Database:
    conn_pool = None

    @classmethod
    async def establish_db_connection(cls):
        try:
            print("Connecting to database")
            cls.conn_pool = await aiomysql.create_pool(
                host="localhost", port=3306, minsize=5, maxsize=50,
                user="root", password="", db="amore", init_command="SET TRANSACTION ISOLATION LEVEL READ COMMITTED",
                cursorclass=aiomysql.cursors.DictCursor
            )

        except Exception as err:
            print(err)

    @classmethod
    async def get_db(cls):
        try:
            print("Sharing the connection")
            return await cls.conn_pool.acquire()
        except Exception as err:
            print(err)

    @classmethod
    async def close_db_connection(cls):
        print("Closing the connection pool with database")
        cls.conn_pool.close()
        await cls.conn_pool.wait_closed()
