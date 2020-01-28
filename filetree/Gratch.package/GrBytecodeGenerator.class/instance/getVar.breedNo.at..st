variable ops
getVar: aBlock1 breedNo: aBlock2 at: index
	| bno |
	self appendValue: index.
	bno := aBlock2 value.
	self appendValue: (aBlock1 cull: bno).
	self appendValue: bno.
	self appendSymbol: #getBreedVar.
	^ nil