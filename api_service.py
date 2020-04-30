from dao_movieinfo import MovieinfoDao
from dao_actor import ActorDao
from dao_writer import WriterDao
from dao_director import DirectorDao
from dao_genre import GenreDao
from dao_reviewer import ReviewerDao
from dao_review import ReviewDao
import json


class ApiService:
	movieinfoDao = MovieinfoDao()
	actorDao = ActorDao()
	writerDao = WriterDao()
	directorDao = DirectorDao()
	genreDao = GenreDao()
	reviewerDao = ReviewerDao()
	reviewDao = ReviewDao()

	def fetchAllMovieinfo(self, queryParams):
		return self.movieinfoDao.fetchAllMovieinfo(queryParams)

	def fetchMovieinfo(self, movieinfoId):
		return self.movieinfoDao.fetchOneMovie(movieinfoId)

	def fetchAllActorinfo(self):
		return self.actorDao.fetchAllActorinfo()

	def fetchAllWriterinfo(self):
		return self.writerDao.fetchAllWriterinfo()

	def fetchAllDirectorinfo(self):
		return self.directorDao.fetchAllDirectorinfo()

	def fetchAllGenreinfo(self):
		return self.genreDao.fetchAllGenreinfo()

	def signInSignUp(self, user):
		isUser = self.reviewerDao.fetchReviwer(user)
		if isUser:
			return self.reviewerDao.updateReviewer(user)
		else:
			return self.reviewerDao.insertReviewer(user)

	def insertRating(self, rate):
		insertedid = self.reviewDao.insertReview(rate)
		rate['id']=insertedid
		self.reviewDao.insertReviewerReviewMovieinfo(rate)
		return rate

	def updateRating(self, rate):
		self.reviewDao.updateReview(rate)
		return rate


	def fetchAnalyticsDoughnut(self, query):
		of = query['of']
		if of == 'genre':
			return self.genreDao.fetchGenreByAnalyticsDoughnut()
		elif of == 'actor':
				return self.actorDao.fetchActorByAnalyticsDoughnut()
		elif of == 'director':
			return self.directorDao.fetchDirectorByAnalyticsDoughnut()
		elif of == 'writer':
			return self.writerDao.fetchWriterByAnalyticsDoughnut()

	def fetchAnalyticsBar(self, query):
		of = query['of']
		id = query['id']
		if of == 'genre':
			return self.genreDao.fetchGenreByAnalyticsBar(id)
		elif of == 'actor':
			return self.actorDao.fetchActorByAnalyticsBar(id)
		elif of == 'director':
			return self.directorDao.fetchDirectorByAnalyticsBar(id)
		elif of == 'writer':
			return self.writerDao.fetchWriterByAnalyticsBar(id)
	

	