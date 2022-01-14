event handling
doubleClickAt: aPoint
	whenDoubleClickDo ifNil: [ ^ self ].
	whenDoubleClickDo cull: startPoint cull: aPoint