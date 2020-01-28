accessing
application: anApplication
	super application: anApplication.
	graph ifNil: [ self setupScripts ]