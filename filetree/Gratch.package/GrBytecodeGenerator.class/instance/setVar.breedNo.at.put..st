code injection
setVar: var breedNo: bno at: id put: aNumber
	self appendValue: id.
	self appendValue: aNumber.
	self appendValue: var.
	self appendValue: bno.
	self appendSymbol: #setBreedVarTo.