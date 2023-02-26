graph actions
clickedAt: aPoint
	self currentBreedNo = GrBreedId nodesBreedNo
		ifTrue: [ ^ self nodeClickedAt: aPoint ].
	self currentBreedNo = GrBreedId edgesBreedNo
		ifTrue: [ ^ self edgeClickedAt: aPoint ].
	self showInspector: 1.
	application updateStatusForced: true.
	self updateDisplay