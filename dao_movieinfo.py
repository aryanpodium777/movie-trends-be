from connection import Connection
from dao_genre import GenreDao
from dao_director import DirectorDao
from dao_writer import WriterDao
from dao_actor import ActorDao
from dao_review import ReviewDao
from model.movieinfo import Movieinfo
from datetime import datetime, timedelta
from singleton import Singleton


class MovieinfoDao(metaclass=Singleton):
	connection = Connection()
	genreDao = GenreDao()
	directorDao = DirectorDao()
	writerDao = WriterDao()
	actorDao = ActorDao()
	reviewDao = ReviewDao()

	def fetchAllMovieinfo(self, queryParams):
		inTheatre = queryParams.get('inTheatre')
		comingSoon = queryParams.get('comingSoon')
		query = "SELECT * FROM `movieinfo`"
		if inTheatre or comingSoon:
			query = query+' WHERE released between %s and %s'

		options = ''
		today = datetime.today()
		tommorow = today+timedelta(days=1)
		week_ago = today - timedelta(days=7)
		week_next = today + timedelta(days=7)
		if inTheatre:
			options = [week_ago.date(), today.date()]
		if comingSoon:
			options = [tommorow, week_next.date()]
		output = self.connection.run(query, False, options)
		list = []
		if output:
			for record in output:
				id = record[0]
				title = record[1]
				Released = record[2].strftime('%Y-%m-%d')
				runtime = record[3]
				_Genre = self.genreDao.fetchGenreByMovieinfoId(id)
				_Director = self.directorDao.fetchDirectorByMovieinfoId(id)
				_Writer = self.writerDao.fetchWriterByMovieinfoId(id)
				_Actor = self.actorDao.fetchActorByMovieinfoId(id)
				Plot = record[4]
				Language = record[5]
				Country = record[6]
				Poster = record[7]
				rating = self.reviewDao.fetchRating(id)
				Type = record[8]
				BoxOffice = record[9]
				Production = record[10]
				movieinfoObj = Movieinfo(id, title, Released, runtime, _Genre, _Director,
										 _Writer, _Actor, Plot, Language, Country, Poster, rating, Type, BoxOffice, Production)
				list.append(movieinfoObj)
		else:
			return []

		return list

	def fetchOneMovie(self, movieinfoId):
		query = "SELECT * FROM movieinfo WHERE id = %s"
		record = self.connection.run(query, True, [movieinfoId])
		id = record[0]
		title = record[1]
		Released = record[2].strftime('%Y-%m-%d')
		runtime = record[3]
		_Genre = self.genreDao.fetchGenreByMovieinfoId(id)
		_Director = self.directorDao.fetchDirectorByMovieinfoId(id)
		_Writer = self.writerDao.fetchWriterByMovieinfoId(id)
		_Actor = self.actorDao.fetchActorByMovieinfoId(id)
		Plot = record[4]
		Language = record[5]
		Country = record[6]
		Poster = record[7]
		rating = self.reviewDao.fetchRating(id)
		Type = record[8]
		BoxOffice = record[9]
		Production = record[10]
		movieinfoObj = Movieinfo(id, title, Released, runtime, _Genre, _Director,
								 _Writer, _Actor, Plot, Language, Country, Poster, rating, Type, BoxOffice, Production)
		return movieinfoObj

	def fetchMovieDetailsByGenreMapping(self, id, year):
		query = """SELECT m.* FROM `movieinfo_genre` as mg 
		 		   LEFT JOIN `movieinfo` as m ON mg.`movie_info_id`=m.id WHERE mg.`genre_id`=%s and YEAR(m.`Released`)=%s"""
		output = self.connection.run(query, False, [id, year])
		list = []
		if output:
			for record in output:
				id = record[0]
				title = record[1]
				Released = record[2].strftime('%Y-%m-%d')
				runtime = record[3]
				_Genre = self.genreDao.fetchGenreByMovieinfoId(id)
				_Director = self.directorDao.fetchDirectorByMovieinfoId(id)
				_Writer = self.writerDao.fetchWriterByMovieinfoId(id)
				_Actor = self.actorDao.fetchActorByMovieinfoId(id)
				Plot = record[4]
				Language = record[5]
				Country = record[6]
				Poster = record[7]
				rating = self.reviewDao.fetchRating(id)
				Type = record[8]
				BoxOffice = record[9]
				Production = record[10]
				movieinfoObj = Movieinfo(id, title, Released, runtime, _Genre, _Director,
										 _Writer, _Actor, Plot, Language, Country, Poster, rating, Type, BoxOffice, Production)
				list.append(movieinfoObj)
		else:
			return []

		return list

	def fetchMovieDetailsByActorMapping(self, id, year):
		query = """SELECT m.* FROM `movieinfo_actor` as ma 
		 		   LEFT JOIN `movieinfo` as m ON ma.`movie_info_id`=m.id WHERE ma.`actor_id`= %s and YEAR(m.`Released`)=%s"""
		output = self.connection.run(query, False, [id, year])
		list = []
		if output:
			for record in output:
				id = record[0]
				title = record[1]
				Released = record[2].strftime('%Y-%m-%d')
				runtime = record[3]
				_Genre = self.genreDao.fetchGenreByMovieinfoId(id)
				_Director = self.directorDao.fetchDirectorByMovieinfoId(id)
				_Writer = self.writerDao.fetchWriterByMovieinfoId(id)
				_Actor = self.actorDao.fetchActorByMovieinfoId(id)
				Plot = record[4]
				Language = record[5]
				Country = record[6]
				Poster = record[7]
				rating = self.reviewDao.fetchRating(id)
				Type = record[8]
				BoxOffice = record[9]
				Production = record[10]
				movieinfoObj = Movieinfo(id, title, Released, runtime, _Genre, _Director,
										 _Writer, _Actor, Plot, Language, Country, Poster, rating, Type, BoxOffice, Production)
				list.append(movieinfoObj)
		else:
			return []

		return list

	def fetchMovieDetailsByDirectorMapping(self, id, year):
		query = """SELECT m.* FROM `movieinfo_director` as md 
		 		   LEFT JOIN `movieinfo` as m ON md.`movie_info_id`=m.id WHERE md.`director_id`= %s and YEAR(m.`Released`)=%s"""
		output = self.connection.run(query, False, [id, year])
		list = []
		if output:
			for record in output:
				id = record[0]
				title = record[1]
				Released = record[2].strftime('%Y-%m-%d')
				runtime = record[3]
				_Genre = self.genreDao.fetchGenreByMovieinfoId(id)
				_Director = self.directorDao.fetchDirectorByMovieinfoId(id)
				_Writer = self.writerDao.fetchWriterByMovieinfoId(id)
				_Actor = self.actorDao.fetchActorByMovieinfoId(id)
				Plot = record[4]
				Language = record[5]
				Country = record[6]
				Poster = record[7]
				rating = self.reviewDao.fetchRating(id)
				Type = record[8]
				BoxOffice = record[9]
				Production = record[10]
				movieinfoObj = Movieinfo(id, title, Released, runtime, _Genre, _Director,
										 _Writer, _Actor, Plot, Language, Country, Poster, rating, Type, BoxOffice, Production)
				list.append(movieinfoObj)
		else:
			return []

		return list

	def fetchMovieDetailsByWriterMapping(self, id, year):
		query = """SELECT m.* FROM `movieinfo_writer` as mw 
		 		   LEFT JOIN `movieinfo` as m ON mw.`movie_info_id`=m.id WHERE mw.`writer_id`= %s and YEAR(m.`Released`)=%s"""
		output = self.connection.run(query, False, [id, year])
		list = []
		if output:
			for record in output:
				id = record[0]
				title = record[1]
				Released = record[2].strftime('%Y-%m-%d')
				runtime = record[3]
				_Genre = self.genreDao.fetchGenreByMovieinfoId(id)
				_Director = self.directorDao.fetchDirectorByMovieinfoId(id)
				_Writer = self.writerDao.fetchWriterByMovieinfoId(id)
				_Actor = self.actorDao.fetchActorByMovieinfoId(id)
				Plot = record[4]
				Language = record[5]
				Country = record[6]
				Poster = record[7]
				rating = self.reviewDao.fetchRating(id)
				Type = record[8]
				BoxOffice = record[9]
				Production = record[10]
				movieinfoObj = Movieinfo(id, title, Released, runtime, _Genre, _Director,
										 _Writer, _Actor, Plot, Language, Country, Poster, rating, Type, BoxOffice, Production)
				list.append(movieinfoObj)
		else:
			return []

		return list
