from connection import Connection
from singleton import Singleton

class ReviewerDao(metaclass=Singleton):
	connection = Connection()

	def insertReviewer(self,user):
		query = f"""INSERT INTO reviewers (name, email,photoUrl,firstName,lastName,authToken, idToken)  
					VALUES ('{user['name']}','{user['email']}',
					'{user['photoUrl']}','{user['firstName']}','{user['lastName']}',
					'{user['authToken']}','{user['idToken']}')"""
		id = self.connection.run(query,False,[],False)
		user['id']=id
		if id:
			return user
		else:
			raise ValueError('Error-INSERT')

		
	def updateReviewer(self,user):
		query = f"""UPDATE reviewers set authToken='{user['authToken']}'
					WHERE email='{user['email']}'"""
		self.connection.run(query,False,[],False)
		return user


	def fetchReviwer(self,user):
		query = f"""SELECT * from reviewers where email='{user['email']}'"""
		return self.connection.run(query,True,[],True)

			