import mysql.connector
from singleton import Singleton

class Connection(metaclass=Singleton):
    def __init__(self):
        self.db = mysql.connector.connect(
            host="localhost",
            port=3306,
            user="root",
            password="",
            db="movie_trends"
            )

    def run(self,query,isSingle,options=[],isFetchQuery=True):
        try:
            cursor = self.db.cursor()
            cursor.execute(query,options)
            if isFetchQuery:
                if isSingle:
                    result = cursor.fetchone()
                else:
                    result = cursor.fetchall()
                return result
            else:
                return 1
        except Exception as e:
            print(e,'-------exception------') 
            
         
                      