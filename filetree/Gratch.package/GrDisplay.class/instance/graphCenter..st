accessing
graphCenter: aPoint
	graphCenter := aPoint roundUpTo: self graphPointStep.
	painter graphRect: self graphRectangle.
	self changed