event handling
mouseUp: evt
	grManipulator ifNotNil: [ :obj | obj mouseUpAt: evt cursorPoint ]