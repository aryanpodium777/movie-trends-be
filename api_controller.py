# using flask_restful 
from flask import Flask, jsonify, request 
from flask_restful import Resource, Api 
from api_service import ApiService
from flask_cors import CORS
import json

app = Flask(__name__) 
CORS(app)
api = Api(app) 
apiService = ApiService()

@app.route('/movie-info',methods=['GET'])
def fetchAllMovieInfo():
	return jsonify(apiService.fetchAllMovieinfo(request.args))


@app.route('/movie-info/<string:movieInfoId>',methods=['GET'])
def fetchSingleMovieInfo(movieInfoId):
	return jsonify(apiService.fetchMovieinfo(movieInfoId))


@app.route('/actors',methods=['GET'])
def fetchActors():
	return jsonify(apiService.fetchAllActorinfo())


@app.route('/writers',methods=['GET'])
def fetchWriters():
	return jsonify(apiService.fetchAllWriterinfo())


@app.route('/directors',methods=['GET'])
def fetchDirectors():
	return jsonify(apiService.fetchAllDirectorinfo())


@app.route('/genres',methods=['GET'])
def fetchGenres():
	return jsonify(apiService.fetchAllGenreinfo())


@app.route('/analytics/doughnut',methods=['GET'])
def fetchAnalyticsDoughnutInfo():
	return jsonify(apiService.fetchAnalyticsDoughnut(request.args))

@app.route('/analytics/bar',methods=['GET'])
def fetchAnalyticsBarInfo():
	return jsonify(apiService.fetchAnalyticsBar(request.args))


@app.route('/rate',methods=['POST'])
def rateInsert():
	rate = request.get_json()
	return jsonify(apiService.insertRating(rate))

@app.route('/rate',methods=['PUT'])
def rateUpdate():
	rate = request.get_json()
	return jsonify(apiService.updateRating(rate))

@app.route('/rating/<string:movieInfoId>/<string:reviewerID>',methods=['GET'])
def fetchReview(movieInfoId,reviewerID):
	return jsonify(apiService.fetchReview(movieInfoId,reviewerID))


@app.route('/user',methods=['POST'])
def user():
	user = request.get_json()
	return jsonify(apiService.signInSignUp(user))


@app.before_request
def before_request():
	print('Interceptor',request)

# driver function 
if __name__ == '__main__': 

	app.run(debug = True) 
