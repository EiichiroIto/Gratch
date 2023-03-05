test
testBreedId
	| e |
	e := self newThread.
	self assert: e breedId isNil.
	e breedId: 10.
	self assert: e breedId equals: 10.
	e breedId: 20.
	self assert: e breedId equals: 20.