from connection import Connection
from singleton import Singleton
from  model.review import Review

class ReviewDao(metaclass=Singleton):
	connection = Connection()

	def insertReview(self, rate):
		query = f"""INSERT INTO review (title, remark, rating) VALUES ('{rate['title']}','{rate['remark']}',{rate['rating']})"""
		output = self.connection.run(query, False, [], False)
		return output

	def insertReviewerReviewMovieinfo(self, rate):  
		query = f"""INSERT INTO reviewer_review_movieinfo (movie_info_id ,reviewer_id, review_id) 
					VALUES ({rate['movie_info_id']},{rate['reviewer_id']},{rate['id']})"""
		output = self.connection.run(query, False, [], False)
		return output

	def updateReview(self, rate):
		query = f"""UPDATE review set title='{rate['title']}',remark='{rate['remark']}',rating='{rate['rating']}'
					WHERE id={rate['id']}"""
		output = self.connection.run(query, False, [], False)
		return output

	def fetchRating(self, movieinfoId):
		query = """SELECT rvm.`movie_info_id`, SUM(r.rating)/COUNT(r.rating) as rating_star
					FROM `reviewer_review_movieinfo` as rvm LEFT JOIN `review` as r on  rvm.`review_id`=r.id
					WHERE rvm.`movie_info_id`= %s """
		output = self.connection.run(query, True, [movieinfoId])   
		if output[1]:
			return output[1]
		return 0

	def fetchReview(self,movieinfoId,reviewerID):
		query = """SELECT * FROM `review` WHERE `id` IN (
		SELECT `review_id` FROM `reviewer_review_movieinfo` WHERE `movie_info_id`=%s and `reviewer_id`=%s
		)"""
		record = self.connection.run(query, True, [movieinfoId,reviewerID])  
		id=record[0]
		title = record[1]
		reamrk = record[2]
		rating  = record[3]
		reviewObj = Review(id,title,reamrk,rating)
		return reviewObj
					