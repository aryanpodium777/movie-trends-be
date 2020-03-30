# using flask_restful 
from flask import Flask, jsonify, request 
from flask_restful import Resource, Api 
from movieinfo_service import MovieinfoService

app = Flask(__name__) 
api = Api(app) 

class AllMovieInfo(Resource): 
	movieinfoService = MovieinfoService()

  # Corresponds to GET request 
	def get(self): 
		return self.movieinfoService.fetchAllMovieinfo()

class MovieInfo(Resource): 
	movieinfoService = MovieinfoService()

  # Corresponds to GET request 
	def get(self,movieInfoId): 
		return self.movieinfoService.fetchMovieinfo(movieInfoId)
 

# adding the defined resources along with their corresponding urls 
api.add_resource(AllMovieInfo, '/movie-info')
api.add_resource(MovieInfo, '/movie-info/<string:movieInfoId>')
# driver function 
if __name__ == '__main__': 

	app.run(debug = True) 
