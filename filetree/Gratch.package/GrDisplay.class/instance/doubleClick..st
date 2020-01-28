event handling
doubleClick: evt
	grManipulator ifNotNil: [ :obj | obj doubleClickAt: evt cursorPoint ]