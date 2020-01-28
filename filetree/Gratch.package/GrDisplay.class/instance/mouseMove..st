event handling
mouseMove: evt
	grManipulator ifNotNil: [ :obj | obj mouseMoveAt: evt cursorPoint ]