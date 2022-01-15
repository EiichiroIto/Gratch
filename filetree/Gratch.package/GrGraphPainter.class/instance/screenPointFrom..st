api
screenPointFrom: aPoint
	| x y |
	x := (screenRect left
		interpolateTo: screenRect right
		at: (aPoint x - graphRect left) / graphRect width)
		rounded.
	y := (screenRect bottom
		interpolateTo: screenRect top
		at: (aPoint y - graphRect top) / graphRect height)
		rounded.
	^ x @ y