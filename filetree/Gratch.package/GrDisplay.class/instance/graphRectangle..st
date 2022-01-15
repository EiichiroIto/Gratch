accessing
graphRectangle: aRectangle
	graphCenter := aRectangle center.
	graphExtent := aRectangle extent.
	painter graphRect: self graphRectangle.
	self changed