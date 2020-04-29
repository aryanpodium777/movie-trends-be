class AnalyticsDoughnut(dict):
	def __init__(self,id,name,count):
		dict.__init__(self,
		id=id, 
		name = name,
        count = count
		)

class AnalyticsBar(dict):
	def __init__(self,year,box_office_collection):
		dict.__init__(self,
		year = year,
		box_office_collection = box_office_collection
		)

	
