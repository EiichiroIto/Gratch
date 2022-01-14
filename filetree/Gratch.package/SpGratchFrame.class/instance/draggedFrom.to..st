graph actions
draggedFrom: anInteger to: anInteger2
	self currentBreedNo = GrBreedId edgesBreedNo
		ifFalse: [ ^ self ].
	(anInteger = 0 or: [ anInteger2 = 0 ])
		ifTrue: [ ^ self ].
	self grWorld createEdgeFrom: anInteger to: anInteger2.
	self display changed