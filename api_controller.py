# using flask_restful 
from flask import Flask, jsonify, request 
from flask_restful import Resource, Api 
from flask_cors import CORS
# from api_service import ApiService

from api_service import fetchAllMovieinfoService
from api_service import fetchMovieinfoService
from api_service import fetchAllActorinfoService
from api_service import fetchAllWriterinfoService
from api_service import fetchAllDirectorinfoService
from api_service import fetchAllGenreinfoService
from api_service import signInSignUpService

import json

app = Flask(__name__) 
CORS(app)
api = Api(app) 
# apiService = ApiService()

@app.route('/movie-info',methods=['GET'])
def fetchAllMovieInfo():
	# return jsonify(apiService.fetchAllMovieinfo(request.args))
	return jsonify(fetchAllMovieinfoService(request.args))


@app.route('/movie-info/<string:movieInfoId>',methods=['GET'])
def fetchSingleMovieInfo(movieInfoId):
	# return jsonify(apiService.fetchMovieinfo(movieInfoId))
	return jsonify(fetchMovieinfoService(movieInfoId))


@app.route('/actors',methods=['GET'])
def fetchActors():
	# return jsonify(apiService.fetchAllActorinfo())
	return jsonify(fetchAllActorinfoService())


@app.route('/writers',methods=['GET'])
def fetchWriters():
	# return jsonify(apiService.fetchAllWriterinfo())
	return jsonify(fetchAllWriterinfoService())


@app.route('/directors',methods=['GET'])
def fetchDirectors():
	# return jsonify(apiService.fetchAllDirectorinfo())
	return jsonify(fetchAllDirectorinfoService())


@app.route('/genres',methods=['GET'])
def fetchGenres():
	# return jsonify(apiService.fetchAllGenreinfo())
	return jsonify(fetchAllGenreinfoService())


@app.route('/user',methods=['POST'])
def user():
	user = request.get_json()
	# return jsonify(apiService.signInSignUp(user))
	return jsonify(signInSignUpService(user))


@app.before_request
def before_request():
    print('Interceptor',request)

# driver function 
if __name__ == '__main__': 

	app.run(debug = True) 
