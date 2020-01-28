accessing
graphCenter: aPoint
	graphCenter := aPoint roundUpTo: self graphPointStep.
	self changed.