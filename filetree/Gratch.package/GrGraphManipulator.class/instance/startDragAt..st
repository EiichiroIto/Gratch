event handling
startDragAt: aPoint
	mode := #startDrag.
	self setupPoint: aPoint.
	node := self nodeAt: aPoint