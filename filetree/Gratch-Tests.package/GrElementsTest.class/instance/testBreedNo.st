test
testBreedNo
	| ts |
	ts := self newElements.
	self assert: ts breedNo isNil.
	ts breedNo: 3.
	self assert: ts breedNo equals: 3.
	ts breedNo: 4.
	self assert: ts breedNo equals: 4.