from connection import Connection
from model.genre import  Genre
from singleton import Singleton

class GenreDao(metaclass=Singleton):
	connection = Connection()

	def fetchGenreByMovieinfoId(self,movieinfoId):
		query = "SELECT id,title FROM `movieinfo_genre` AS m LEFT JOIN `genre` AS g ON m.genre_id = g.id WHERE m.movie_info_id = %s"
		output = self.connection.run(query,False,[movieinfoId])
		list=[]
		for record in output:
			id=record[0]
			title = record[1]
			genreObj = Genre(id,title)
			list.append(genreObj)
		
		return list

	def fetchAllGenreinfo(self):
		query = "SELECT * FROM genre"
		output = self.connection.run(query,False)
		list = []
		for record in output:
			id=record[0]
			title = record[1]
			genreObj = Genre(id,title)
			list.append(genreObj)
		return list
	
