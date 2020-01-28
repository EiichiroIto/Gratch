event handling
doubleClickAt: aPoint
	| bno eno |
	whenDoubleClickDo ifNil: [ ^ self ].
	bno := self breedNo.
	eno := 0.
	bno = GrBreedId graphBreedNo
		ifTrue: [ eno := 1 ].
	bno = GrBreedId nodesBreedNo
		ifTrue: [ eno := self nodeAt: aPoint ].
	bno = GrBreedId edgesBreedNo
		ifTrue: [ eno := self edgeAt: aPoint ].
	eno = 0
		ifTrue: [ ^ self ].
	whenDoubleClickDo cull: eno