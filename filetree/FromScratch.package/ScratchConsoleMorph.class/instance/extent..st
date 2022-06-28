geometry
extent: aPoint

	| old |
	old := self extent.
	super extent: aPoint.
	aPoint = old ifTrue: [ ^ self ].
	screenSize := aPoint // charExtent.
	self clearScreen