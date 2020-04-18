# from dao_movieinfo import MovieinfoDao
# from dao_actor import ActorDao
# from dao_writer import WriterDao
# from dao_director import DirectorDao
# from dao_genre import GenreDao
# from dao_reviewer import ReviewerDao

from dao_movieinfo import fetchAllMovieinfoDAO
from dao_movieinfo import fetchOneMovieDAO
from dao_actor import fetchAllActorinfoDAO
from dao_writer import fetchAllWriterinfoDAO
from dao_director import fetchAllDirectorinfoDAO
from dao_genre import fetchAllGenreinfoDAO
from dao_reviewer import fetchReviwerDAO
from dao_reviewer import updateReviewerDAO
from dao_reviewer import insertReviewerDAO


# class ApiService:
# 	movieinfoDao = MovieinfoDao()
# 	actorDao = ActorDao()
# 	writerDao = WriterDao()
# 	directorDao = DirectorDao()
# 	genreDao = GenreDao()
# 	reviewerDao = ReviewerDao()


def fetchAllMovieinfoService(queryParams):
    return fetchAllMovieinfoDAO(queryParams)


def fetchMovieinfoService(movieinfoId):
    return fetchOneMovieDAO(movieinfoId)


def fetchAllActorinfoService():
    return fetchAllActorinfoDAO()


def fetchAllWriterinfoService():
    return fetchAllWriterinfoDAO()


def fetchAllDirectorinfoService():
    return fetchAllDirectorinfoDAO()


def fetchAllGenreinfoService():
    return fetchAllGenreinfoDAO()


def signInSignUpService(user):
    isUser = fetchReviwerDAO(user)
    if isUser:
        return updateReviewerDAO(user)
    else:
        return insertReviewerDAO(user)
