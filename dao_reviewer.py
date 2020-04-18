from connection import run
from model.reviewer import Reviewer
from singleton import Singleton


def insertReviewerDAO(user):
    query = f"""INSERT INTO reviewers (name, email,photoUrl,firstName,lastName,authToken, idToken)  
				VALUES ('{user['name']}','{user['email']}',
				'{user['photoUrl']}','{user['firstName']}','{user['lastName']}',
				'{user['authToken']}','{user['idToken']}')"""
    output = run(query, False, [], False)
    if output == 1:
        return user
    else:
        raise ValueError('Error')


def updateReviewerDAO(user):
    query = f"""UPDATE reviewers set authToken='{user['authToken']}'
				WHERE email='{user['email']}'"""
    print(query)
    output = run(query, False, [], False)
    if output:
        return output
    else:
        raise ValueError('Error')


def fetchReviwerDAO(user):
    query = f"""SELECT * from reviewers where email='{user['email']}'"""
    output = run(query, True, [])
    return output
