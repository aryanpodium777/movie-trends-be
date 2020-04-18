import mysql.connector
from singleton import Singleton


class Connection(metaclass=Singleton):

    host = "db4free.net"
    user = "aryangupta"
    password = "mtbbd123"

    def __init__(self):
        self.db = mysql.connector.connect(
            host=self.host,
            port=3306,
            user=self.user,
            password=self.password,
            db="movie_trends"
        )

    def run(self, query, isSingle, options=[], isFetchQuery=True):
        try:
            cursor = self.db.cursor()
            cursor.execute(query, options)
            if isFetchQuery:
                if isSingle:
                    result = cursor.fetchone()
                else:
                    result = cursor.fetchall()
                return result
            else:
                return 1
        except Exception as e:
            print(e, '-------exception------')
