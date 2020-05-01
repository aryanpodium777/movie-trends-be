from connection import Connection
from singleton import Singleton

class ReviewerDao(metaclass=Singleton):
	connection = Connection()

	def insertReviewer(self,user):
		query = f"""INSERT INTO reviewers (name, email,photoUrl,firstName,lastName,authToken, idToken)  
					VALUES ('{user['name']}','{user['email']}',
					'{user['photoUrl']}','{user['firstName']}','{user['lastName']}',
					'{user['authToken']}','{user['idToken']}')"""
		output = self.connection.run(query,False,[],False)
		if output==1:
			return user
		else:
			raise ValueError('Error')

		
	def updateReviewer(self,user):
		query = f"""UPDATE reviewers set authToken='{user['authToken']}'
					WHERE email='{user['email']}'"""
		print(query)
		output = self.connection.run(query,False,[],False)
		if output:
			return output
		else:
			raise ValueError('Error')

	def fetchReviwer(self,user):
		query = f"""SELECT * from reviewers where email='{user['email']}'"""
		output = self.connection.run(query,True,[])
		return output

			