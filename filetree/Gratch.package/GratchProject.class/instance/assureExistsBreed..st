accessing
assureExistsBreed: each
	((self scripts collect: #objName) includes: each)
		ifFalse: [ self error: each ]