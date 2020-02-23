test
testBreedNo
	| m |
	m := self newManipulator.
	self assert: m breedNo isNil.
	m getBreedNoBlock: [ 123 ].
	self assert: m breedNo equals: 123