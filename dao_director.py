from connection import Connection
from model.director import Director

class DirectorDao:
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