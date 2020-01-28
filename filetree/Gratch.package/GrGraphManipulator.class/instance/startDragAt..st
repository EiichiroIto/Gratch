event handling
startDragAt: aPoint
	mode := #startDrag.
	self setupPoint: aPoint.
	self breedNo = GrBreedId graphBreedNo
		ifFalse: [ ^ self setupDragNodeAt: aPoint ].