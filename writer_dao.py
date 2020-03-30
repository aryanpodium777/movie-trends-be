from connection import Connection
from model.writer import Writer

class WriterDao:
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

		
