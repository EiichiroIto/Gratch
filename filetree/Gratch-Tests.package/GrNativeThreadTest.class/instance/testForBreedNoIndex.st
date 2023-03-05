test
testForBreedNoIndex

	| e |
	e := self newThread.
	self assert: e breedId isNil.
	self assert: e id isNil.
	e forBreedNo: 3 index: 123.
	self assert: e breedId equals: 3.
	self assert: e id equals: 123