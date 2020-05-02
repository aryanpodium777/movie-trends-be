class Review(dict):
	def __init__(self,id,title,remark,rating):
		dict.__init__(self,
		id=id, 
		title = title,
		remark=remark,
		rating=rating
		)