event handling
startDrag: evt
	grManipulator ifNotNil: [ :obj | obj startDragAt: evt cursorPoint ]