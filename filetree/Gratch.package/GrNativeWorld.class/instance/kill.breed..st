accessing
kill: id breed: bno
	bno = GrBreedId graphBreedNo
		ifTrue: [ ^ self ].
	bno = GrBreedId nodesBreedNo
		ifTrue: [ self edges
				withElementsDo: [ :each :edges | 
					((self n1At: each) = id or: [ (self n2At: each) = id ])
						ifTrue: [ edges killAt: each ] ] ].
	^ (self breedOf: bno) killAt: id