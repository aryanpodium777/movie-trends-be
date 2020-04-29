from connection import Connection
from model.actor import Actor
from model.analytics import AnalyticsDoughnut , AnalyticsBar
from singleton import Singleton

class ActorDao(metaclass=Singleton):
	connection = Connection()

	def fetchActorByMovieinfoId(self,movieinfoId):
		query = "SELECT id,name,gender FROM `movieinfo_actor` AS m LEFT JOIN `actor` AS a ON m.actor_id = a.id WHERE m.movie_info_id = %s"
		output = self.connection.run(query,False,[movieinfoId])
		list=[]
		for record in output:
			id=record[0]
			name = record[1]
			gender = record[2]
			actorObj = Actor(id,name,gender)
			list.append(actorObj)
		
		return list

		
	def fetchAllActorinfo(self):
		query = "SELECT * FROM actor"
		output = self.connection.run(query,False)
		list = []
		for record in output:
			id=record[0]
			name = record[1]
			gender = record[2]
			actorObj = Actor(id,name,gender)
			list.append(actorObj)
		return list


	def fetchActorByAnalyticsDoughnut(self):
		query = "SELECT id,name,COUNT(`actor_id`) as count FROM `movieinfo_actor` AS m LEFT JOIN `actor` AS a ON m.actor_id = a.id GROUP BY `actor_id`"	
		output = self.connection.run(query,False)
		list = []
		for record in output:
			id=record[0]
			name = record[1]
			count = record[2]
			actorObj = AnalyticsDoughnut(id,name,count)
			list.append(actorObj)
		return list


	def fetchActorByAnalyticsBar(self,id):
		query = "SELECT  YEAR(m.`Released`) as year, SUM( `BoxOffice` ) AS box_office_collection FROM `movieinfo_actor` AS ma LEFT JOIN `movieinfo` AS m ON ma.`movie_info_id` = m.`id` WHERE ma.`actor_id` = %s GROUP BY YEAR(m.`Released`)"	
		output = self.connection.run(query,False,[id])
		list = []
		for record in output:
			year = record[0],
			box_office_collection = record[1]
			actorObj = AnalyticsBar(year,box_office_collection)
			list.append(actorObj)
		return list
		

	


