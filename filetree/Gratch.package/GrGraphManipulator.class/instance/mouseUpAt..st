event handling
mouseUpAt: aPoint
	| bno |
	bno := self breedNo.
	(mode = #click and: [ bno = GrBreedId nodesBreedNo ])
		ifTrue: [ self addNodeAt: startPoint ].
	(mode = #startDrag and: [ bno = GrBreedId edgesBreedNo ])
		ifTrue: [ self addEdgeAt: aPoint ].
	self clear