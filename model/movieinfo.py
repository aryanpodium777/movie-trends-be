class Movieinfo(dict):
	def __init__(self,id ,Title ,Released,Runtime,_Genre,_Director,_Writer,_Actor,Plot,Language,Country,Poster,rating,Type,BoxOffice,Production):
		dict.__init__(self,
		id=id, 
		title = Title, 
		Released = Released,
		runtime  = Runtime,
		_Genre  = _Genre,
		_Director = _Director,
		_Writer = _Writer,
		_Actor = _Actor,
		Plot = Plot,
		Language = Language,
		Country = Country,
		Poster = Poster,
		rating = rating,
		Type = Type,
		BoxOffice = BoxOffice,
		Production = Production
		)
