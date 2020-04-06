from connection import Connection
from model.actor import Actor

class ActorDao:
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


