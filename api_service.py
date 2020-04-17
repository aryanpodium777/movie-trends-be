from dao_movieinfo import MovieinfoDao
from dao_actor import ActorDao
from dao_writer import WriterDao
from dao_director import DirectorDao
from dao_genre import GenreDao
from dao_reviewer import ReviewerDao

class ApiService:
	movieinfoDao = MovieinfoDao()
	actorDao = ActorDao()
	writerDao = WriterDao()
	directorDao = DirectorDao()
	genreDao = GenreDao()
	reviewerDao = ReviewerDao()

	def fetchAllMovieinfo(self,queryParams):
		return self.movieinfoDao.fetchAllMovieinfo(queryParams)

	def fetchMovieinfo(self,movieinfoId):
		return self.movieinfoDao.fetchOneMovie(movieinfoId)

	def fetchAllActorinfo(self):
		return self.actorDao.fetchAllActorinfo()	

	def fetchAllWriterinfo(self):
		return self.writerDao.fetchAllWriterinfo()	

	def fetchAllDirectorinfo(self):
		return self.directorDao.fetchAllDirectorinfo()

	def fetchAllGenreinfo(self):
		return self.genreDao.fetchAllGenreinfo()

	def signInSignUp(self,user):    
		isUser=self.reviewerDao.fetchReviwer(user)
		if isUser:
			return self.reviewerDao.updateReviewer(user)
		else:
			return self.reviewerDao.insertReviewer(user)
