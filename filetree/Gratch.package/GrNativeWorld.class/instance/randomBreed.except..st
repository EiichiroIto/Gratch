accessing
randomBreed: bno except: id
	| list |
	list := (self breedOf: bno) livingOnes copyWithout: id.
	list isEmpty
		ifTrue: [ ^ 0 ].
	^ list atRandom: random