test
testGoto

	| m |
	m := self newMorph.
	m screenSize: 4 @ 3.
	self assert: m cursor equals: 0 @ 0.
	m goto: 1 @ 2.
	self assert: m cursor equals: 1 @ 2.
	m goto: 5 @ 10.
	self assert: m cursor equals: 0 @ 0