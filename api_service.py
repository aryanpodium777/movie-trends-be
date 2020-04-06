from movieinfo_dao import MovieinfoDao
from actor_dao import ActorDao
from writer_dao import WriterDao
from director_dao import DirectorDao
from genre_dao import GenreDao

class ApiService:
	movieinfoDao = MovieinfoDao()
	actorDao = ActorDao()
	writerDao = WriterDao()
	directorDao = DirectorDao()
	genreDao = GenreDao()

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
