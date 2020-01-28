test
testPrivBreeds
	| c |
	c := self newEntryPoints.
	self assert: c privBreeds isDictionary.
	self assert: c privBreeds isEmpty.