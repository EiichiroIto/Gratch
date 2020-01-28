event handling
clickAt: aPoint
	mode ifNotNil: [ ^ self ].
	mode := #click.
	self setupPoint: aPoint.