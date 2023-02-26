code injection
changeVar: var breedNo: bno at: id by: aNumber
	self appendValue: id.
	self appendSymbol: #dup.
	self appendValue: var.
	self appendValue: bno.
	self appendSymbol: #getBreedVar.
	self appendValue: aNumber.
	self appendSymbol: #plus.
	self appendValue: var.
	self appendValue: bno.
	self appendSymbol: #setBreedVarTo