from connection import run
from model.director import Director
from singleton import Singleton


def fetchDirectorByMovieinfoIdDAO(movieinfoId):
	query = "SELECT id,name FROM `movieinfo_director` AS m LEFT JOIN `director` AS d ON m.director_id = d.id WHERE m.movie_info_id = %s"
	output = run(query,False,[movieinfoId])
	list=[]
	for record in output:
		id=record[0]
		name = record[1]
		directorObj = Director(id,name)
		list.append(directorObj)
	
	return list

		
def fetchAllDirectorinfoDAO():
	query = "SELECT * FROM director"
	output = run(query,False)
	list = []
	for record in output:
		id=record[0]
		name = record[1]
		directorObj =  Director(id,name)
		list.append(directorObj)
	return list