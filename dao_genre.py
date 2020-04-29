from connection import Connection
from model.genre import  Genre
from model.analytics import AnalyticsDoughnut , AnalyticsBar
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

	def fetchGenreByAnalyticsDoughnut(self):
		query = "SELECT `id`,`title`,COUNT(`genre_id`) as count FROM `movieinfo_genre` AS m LEFT JOIN `genre` AS g ON m.genre_id = g.id GROUP BY `genre_id`"	
		output = self.connection.run(query,False)
		list = []
		for record in output:
			id=record[0]
			name = record[1]
			count = record[2]
			genreObj = AnalyticsDoughnut(id,name,count)
			list.append(genreObj)
		return list
	
	
	def fetchGenreByAnalyticsBar(self,id):
		query = "SELECT YEAR(m.`Released`) as year, SUM( `BoxOffice` ) AS box_office_collection FROM `movieinfo_genre` AS mg LEFT JOIN `movieinfo` AS m ON mg.`movie_info_id` = m.`id` WHERE mg.`genre_id` = %s GROUP BY YEAR(m.`Released`)"	
		output = self.connection.run(query,False,[id])
		list = []
		for record in output:
			year = record[0],
			box_office_collection = record[1]
			genreObj = AnalyticsBar(year,box_office_collection)
			list.append(genreObj)
		return list
	