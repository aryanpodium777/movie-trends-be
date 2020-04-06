# using flask_restful 
from flask import Flask, jsonify, request 
from flask_restful import Resource, Api 
from api_service import ApiService
from flask_cors import CORS

app = Flask(__name__) 
CORS(app)
api = Api(app) 

class AllMovieInfo(Resource): 
	apiService = ApiService()

  # Corresponds to GET request 
	def get(self): 
		return self.apiService.fetchAllMovieinfo(request.args)

class MovieInfo(Resource): 
	apiService = ApiService()

  # Corresponds to GET request 
	def get(self,movieInfoId): 
		return self.apiService.fetchMovieinfo(movieInfoId)

class Actors(Resource):
	apiService = ApiService()

	def get(self):
		return self.apiService.fetchAllActorinfo()
		
class Writers(Resource):
	apiService = ApiService()

	def get(self):
		return self.apiService.fetchAllWriterinfo()

class Directors(Resource):
	apiService = ApiService()

	def get(self):
		return self.apiService.fetchAllDirectorinfo()

class Genres(Resource):
	apiService = ApiService()

	def get(self):
		return self.apiService.fetchAllGenreinfo()
		





# adding the defined resources along with their corresponding urls 
api.add_resource(AllMovieInfo, '/movie-info')
api.add_resource(MovieInfo, '/movie-info/<string:movieInfoId>')
api.add_resource(Actors,'/actors')
api.add_resource(Writers,'/writers')
api.add_resource(Directors,'/directors')
api.add_resource(Genres,'/genres')
# driver function 
if __name__ == '__main__': 

	app.run(debug = True) 
