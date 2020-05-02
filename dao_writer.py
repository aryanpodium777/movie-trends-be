from connection import Connection
from model.writer import Writer
from model.analytics import AnalyticsDoughnut ,AnalyticsBar
from singleton import Singleton

class WriterDao(metaclass=Singleton):
	connection = Connection()

	def fetchWriterByMovieinfoId(self,movieinfoId):
		query = "SELECT id,name,genre FROM `movieinfo_writer` AS m LEFT JOIN `writer` AS w ON m.writer_id = w.id WHERE m.movie_info_id = %s"
		output = self.connection.run(query,False,[movieinfoId])
		list=[]
		for record in output:
			id=record[0]
			name = record[1]
			genre = record[2]
			writerObj = Writer(id,name,genre)
			list.append(writerObj)
		
		return list

	def fetchAllWriterinfo(self):
		query = "SELECT * FROM writer"
		output = self.connection.run(query,False)
		list = []
		for record in output:
			id=record[0]
			name = record[1]
			genre = record[2]
			writerObj = Writer(id,name,genre)
			list.append(writerObj)
		return list
	
	
	def fetchWriterByAnalyticsDoughnut(self):
		query = "SELECT id,name,COUNT(`writer_id`) as count FROM `movieinfo_writer` AS m LEFT JOIN `writer` AS w ON m.writer_id = w.id GROUP BY `writer_id`"	
		output = self.connection.run(query,False)
		list = []
		for record in output:
			id=record[0]
			name = record[1]
			count = record[2]
			writerObj = AnalyticsDoughnut(id,name,count)
			list.append(writerObj)
		return list


	def fetchWriterByAnalyticsBar(self,id):
		query = "SELECT YEAR(m.`Released`) as year, SUM( `BoxOffice` ) AS box_office_collection FROM `movieinfo_writer` AS mw LEFT JOIN `movieinfo` AS m ON mw.`movie_info_id` = m.`id` WHERE mw.`writer_id` = %s GROUP BY YEAR(m.`Released`)"	
		output = self.connection.run(query,False,[id])
		list = []
		for record in output:
			year = record[0],
			year= year[0]
			box_office_collection = str(record[1])
			writerObj = AnalyticsBar(year,box_office_collection)
			list.append(writerObj)
		return list
	