test
testCharExtent

	| m |
	m := self newMorph.
	self assert: m charExtent isPoint.
	m charExtent: 5 @ 6.
	self assert: m charExtent equals: 5 @ 6