event handling
mouseMoveAt: aPoint
	| bno |
	mode = #startDrag
		ifFalse: [ ^ self ].
	bno := self breedNo.
	(bno = GrBreedId nodesBreedNo and: [ node notNil ])
		ifTrue: [ ^ self dragNodeTo: aPoint ].
	(bno = GrBreedId edgesBreedNo and: [ node notNil ])
		ifTrue: [ ^ self dragEdgeTo: aPoint ].
	self dragGraphTo: aPoint