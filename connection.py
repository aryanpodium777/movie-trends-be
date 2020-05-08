import mysql.connector
from singleton import Singleton


class Connection(metaclass=Singleton):

	host = "db4free.net"
	user = "aryangupta"
	password = "mtbbd123"
	port='3306'

	config = {
		'user': user,
		'password': password,
		'host': host,
		'port': port,
		'database': 'movie_trends',
		'raise_on_warnings': True
	}

	def __init__(self):
		self.db = mysql.connector.connect(**self.config)

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
				return cursor.lastrowid
		except Exception as e:
			print(e, '-------exception------')
