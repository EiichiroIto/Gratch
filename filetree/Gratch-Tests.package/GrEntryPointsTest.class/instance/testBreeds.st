test
testBreeds
	| c |
	c := self newEntryPoints.
	self assert: c breeds isDictionary.
	self assert: c breeds isEmpty.