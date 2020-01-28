accessing
graphPointToWorld: aPoint
	| p |
	p := aPoint x @ aPoint y negated.
	^ (self bounds topLeft
		interpolateTo: self bounds bottomRight
		at: (p - self graphRectangle topLeft) / self graphRectangle extent)
		rounded