code injection
getVar: vno breedNo: bno at: index

	self appendValue: index.
	self appendValue: vno.
	self appendValue: bno.
	self appendSymbol: #getBreedVar.
	^ nil