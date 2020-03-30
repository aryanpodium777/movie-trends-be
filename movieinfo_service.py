from movieinfo_dao import MovieinfoDao

class MovieinfoService:
	movieinfoDao = MovieinfoDao()

	def fetchAllMovieinfo(self):
		return self.movieinfoDao.fetchAllMovieinfo()

	def fetchMovieinfo(self,movieinfoId):
		return {}
