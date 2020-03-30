class Movieinfo(dict):
	def __init__(self,id ,Title ,Year,Rated,Released,Runtime,_Genre,_Director,_Writer,_Actor,Plot,Language,Country,_Awards,Poster,rating,votes ,Type,BoxOffice,Production):
		dict.__init__(self,
		id=id, 
		title = Title, 
		year = Year, 
		Rated = Rated,
		Released = Released,
		runtime  = Runtime,
		_Genre  = _Genre,
		_Director = _Director,
		_Writer = _Writer,
		_Actor = _Actor,
		Plot = Plot,
		Language = Language,
		Country = Country,
		_Awards = _Awards,
		Poster = Poster,
		rating = rating,
		votes = votes, 
		Type = Type,
		BoxOffice = BoxOffice,
		Production = Production
		)
