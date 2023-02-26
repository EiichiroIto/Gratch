test
testUpdateCharExtent

	| m |
	m := self newMorph.
	m charExtent: nil.
	self assert: m charExtent isNil.
	m updateCharExtent.
	self assert: m charExtent isPoint