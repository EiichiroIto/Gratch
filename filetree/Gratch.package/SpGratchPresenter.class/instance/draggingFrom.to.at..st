graph actions
draggingFrom: aPoint to: aPoint2 at: anInteger
	| bno p w d |
	w := self grWorld.
	d := stageFrame display.
	anInteger ~= 0
		ifTrue: [ bno := self currentBreedNo.
			bno = GrBreedId nodesBreedNo
				ifTrue: [ w pointAt: anInteger put: aPoint2.
					^ true ].
			bno = GrBreedId edgesBreedNo
				ifTrue: [ p := w pointAt: anInteger.
					d dragEdgeFrom: p to: aPoint2.
					^ true ] ].
	^ false