api
graphPointFrom: aPoint
	| x y |
	x := (graphRect left
		interpolateTo: graphRect right
		at: (aPoint x - screenRect left) / screenRect width)
		rounded.
	y := (graphRect bottom
		interpolateTo: graphRect top
		at: (aPoint y - screenRect top) / screenRect height)
		rounded.
	^ x @ y