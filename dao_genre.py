from connection import run
from model.genre import Genre
from singleton import Singleton


def fetchGenreByMovieinfoIdDAO(movieinfoId):
    query = "SELECT id,title FROM `movieinfo_genre` AS m LEFT JOIN `genre` AS g ON m.genre_id = g.id WHERE m.movie_info_id = %s"
    output = run(query, False, [movieinfoId])
    list = []
    for record in output:
        id = record[0]
        title = record[1]
        genreObj = Genre(id, title)
        list.append(genreObj)

    return list


def fetchAllGenreinfoDAO():
    query = "SELECT * FROM genre"
    output = run(query, False)
    list = []
    for record in output:
        id = record[0]
        title = record[1]
        genreObj = Genre(id, title)
        list.append(genreObj)
    return list
