test
testWithinScreen

	| m |
	m := self newMorph.
	m screenSize: 4 @ 3.
	self assert: (m withinScreen: 0 @ 0).
	self assert: (m withinScreen: 3 @ 0).
	self assert: (m withinScreen: 0 @ 1).
	self assert: (m withinScreen: 3 @ 1).
	self assert: (m withinScreen: 0 @ 2).
	self assert: (m withinScreen: 3 @ 2).
	self deny: (m withinScreen: 0 @ -1).
	self deny: (m withinScreen: -1 @ 0).
	self deny: (m withinScreen: 4 @ 0).
	self deny: (m withinScreen: -1 @ 1).
	self deny: (m withinScreen: 4 @ 1).
	self deny: (m withinScreen: -1 @ 2).
	self deny: (m withinScreen: 4 @ 2)