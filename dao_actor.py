from connection import run
from model.actor import Actor
from singleton import Singleton


def fetchActorByMovieinfoIdDAO(movieinfoId):
    query = "SELECT id,name,gender FROM `movieinfo_actor` AS m LEFT JOIN `actor` AS a ON m.actor_id = a.id WHERE m.movie_info_id = %s"
    output = run(query, False, [movieinfoId])
    list = []
    for record in output:
        id = record[0]
        name = record[1]
        gender = record[2]
        actorObj = Actor(id, name, gender)
        list.append(actorObj)

    return list


def fetchAllActorinfoDAO():
    query = "SELECT * FROM actor"
    output = run(query, False)
    list = []
    for record in output:
        id = record[0]
        name = record[1]
        gender = record[2]
        actorObj = Actor(id, name, gender)
        list.append(actorObj)
    return list
