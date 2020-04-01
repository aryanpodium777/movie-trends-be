from connection import Connection
from genre_dao import GenreDao
from director_dao import DirectorDao
from writer_dao import WriterDao
from actor_dao import ActorDao
from  model.movieinfo import  Movieinfo

class MovieinfoDao:
	connection = Connection()
	genreDao = GenreDao()
	directorDao = DirectorDao()
	writerDao = WriterDao()
	actorDao = ActorDao()

	def fetchAllMovieinfo(self):
		query = "SELECT * FROM `movieinfo`"
		output = self.connection.run(query,False)
		list=[]
		for record in output:
			id=record[0]
			title = record[1]
			year = record[2]
			Rated = record[3]
			Released = record[4]
			runtime  = record[5]
			_Genre  = self.genreDao.fetchGenreByMovieinfoId(id)
			_Director = self.directorDao.fetchDirectorByMovieinfoId(id)
			_Writer = self.writerDao.fetchWriterByMovieinfoId(id)
			_Actor = self.actorDao.fetchActorByMovieinfoId(id)
			Plot = record[10]
			Language = record[11]
			Country = record[12]
			_Awards = record[13]
			Poster = record[14]
			rating = record[15]
			votes = record[16] 
			Type = record[17]
			BoxOffice = record[18]
			Production = record[19]
			movieinfoObj = Movieinfo(id,title,year,Rated,Released,runtime,_Genre,_Director,
			_Writer,_Actor,Plot,Language,Country,_Awards,Poster,rating,votes,Type,BoxOffice,Production)
			list.append(movieinfoObj)
		
		return list

	def fetchOneMovie(self,movieinfoId):
		query = "SELECT * FROM movieinfo WHERE id = %s"
		record = self.connection.run(query,True,[movieinfoId])
		id=record[0]
		title = record[1]
		year = record[2]
		Rated = record[3]
		Released = record[4]
		runtime  = record[5]
		_Genre  = self.genreDao.fetchGenreByMovieinfoId(id)
		_Director = self.directorDao.fetchDirectorByMovieinfoId(id)
		_Writer = self.writerDao.fetchWriterByMovieinfoId(id)
		_Actor = self.actorDao.fetchActorByMovieinfoId(id)
		Plot = record[10]
		Language = record[11]
		Country = record[12]
		_Awards = record[13]
		Poster = record[14]
		rating = record[15]
		votes = record[16] 
		Type = record[17]
		BoxOffice = record[18]
		Production = record[19]
		movieinfoObj = Movieinfo(id,title,year,Rated,Released,runtime,_Genre,_Director,
		_Writer,_Actor,Plot,Language,Country,_Awards,Poster,rating,votes,Type,BoxOffice,Production)
		return movieinfoObj
		
