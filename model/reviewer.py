class Reviewer(dict):
	def __init__(self,id, name, emailid,provideid,provider,image,token, idtoken):
		dict.__init__(self,
		id=id,
		name=name,
		emailid=emailid,
		provideid=provideid,
		provider=provider,
		image=image,
		token=token,
		idtoken=idtoken
		)