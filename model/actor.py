class Actor(dict):
	def __init__(self,id,name,gender):
		dict.__init__(self,
		id=id, 
		name = name,
        gender = gender
		)