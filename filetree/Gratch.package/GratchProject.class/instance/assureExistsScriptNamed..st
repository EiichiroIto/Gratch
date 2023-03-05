api
assureExistsScriptNamed: each

	(self scriptNames includes: each) ifFalse: [ self error: each ]