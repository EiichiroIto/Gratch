accessing
aliveBreed: bno at: id
	| breed |
	breed := breeds at: bno.
	(id between: 1 and: breed size)
		ifFalse: [ ^ false ].
	^ breed aliveAt: id