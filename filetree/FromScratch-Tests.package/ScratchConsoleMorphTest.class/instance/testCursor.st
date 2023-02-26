test
testCursor

	| m |
	m := self newMorph.
	self assert: m cursor isPoint.
	m cursor: 5 @ 6.
	self assert: m cursor equals: 5 @ 6