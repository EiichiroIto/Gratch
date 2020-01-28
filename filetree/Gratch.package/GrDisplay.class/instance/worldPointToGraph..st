accessing
worldPointToGraph: aPoint
	| p |
	p := (self graphRectangle topLeft
		interpolateTo: self graphRectangle bottomRight
		at: (aPoint - self bounds topLeft) / self bounds extent)
		roundUpTo: self graphPointStep.
	^ p x @ p y negated