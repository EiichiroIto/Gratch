geometry
extent: aPoint

	super extent: aPoint.
	stringMorph width:
		(self width - (2 * borderWidth) - self insetX max: 0)