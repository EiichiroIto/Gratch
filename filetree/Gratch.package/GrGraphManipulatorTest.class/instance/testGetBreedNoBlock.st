test
testGetBreedNoBlock
	| m |
	m := self newManipulator.
	self assert: m getBreedNoBlock isNil.
	m getBreedNoBlock: 123.
	self assert: m getBreedNoBlock equals: 123