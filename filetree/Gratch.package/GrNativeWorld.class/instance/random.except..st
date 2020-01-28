accessing
random: bno except: id
	| list |
	list := (self breedOf: bno) livingElements copyWithout: id.
	list isEmpty
		ifTrue: [ ^ 0 ].
	^ list atRandom