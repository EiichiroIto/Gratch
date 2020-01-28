event handling
click: evt
	grManipulator ifNotNil: [ :obj | obj clickAt: evt cursorPoint ]