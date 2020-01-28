test
testPrivStartPoint
	| m |
	m := self newManipulator.
	self assert: m privStartPoint isNil.
	m privStartPoint: 1 @ 2.
	self assert: m privStartPoint equals: 1 @ 2.
	m privStartPoint: 3 @ 4.
	self assert: m privStartPoint equals: 3 @ 4.