from connection import Connection
from model.director import Director
from model.analytics import AnalyticsDoughnut , AnalyticsBar
from singleton import Singleton

class DirectorDao(metaclass=Singleton):
	connection = Connection()

	def fetchDirectorByMovieinfoId(self,movieinfoId):
		query = "SELECT id,name FROM `movieinfo_director` AS m LEFT JOIN `director` AS d ON m.director_id = d.id WHERE m.movie_info_id = %s"
		output = self.connection.run(query,False,[movieinfoId])
		list=[]
		for record in output:
			id=record[0]
			name = record[1]
			directorObj = Director(id,name)
			list.append(directorObj)
		
		return list

		
	def fetchAllDirectorinfo(self):
		query = "SELECT * FROM director"
		output = self.connection.run(query,False)
		list = []
		for record in output:
			id=record[0]
			name = record[1]
			directorObj =  Director(id,name)
			list.append(directorObj)
		return list


	def fetchDirectorByAnalyticsDoughnut(self):
		query = "SELECT id,name,COUNT(`director_id`) as count FROM `movieinfo_director` AS m LEFT JOIN `director` AS d ON m.director_id = d.id GROUP BY `director_id`"	
		output = self.connection.run(query,False)
		list = []
		for record in output:
			id=record[0]
			name = record[1]
			count = record[2]
			directorObj = AnalyticsDoughnut(id,name,count)
			list.append(directorObj)
		return list
     
	def fetchDirectorByAnalyticsBar(self,id):
		query = "SELECT YEAR(m.`Released`) as year, SUM( `BoxOffice` ) AS box_office_collection FROM `movieinfo_director` AS md LEFT JOIN `movieinfo` AS m ON md.`movie_info_id` = m.`id` WHERE md.`director_id` = %s GROUP BY YEAR(m.`Released`)"	
		output = self.connection.run(query,False,[id])
		list = []
		for record in output:
			year = record[0],
			box_office_collection = record[1]
			directorObj = AnalyticsBar(year,box_office_collection)
			list.append(directorObj)
		return list 