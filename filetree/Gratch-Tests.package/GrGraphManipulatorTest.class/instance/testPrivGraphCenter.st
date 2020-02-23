test
testPrivGraphCenter
	| m |
	m := self newManipulator.
	self assert: m privGraphCenter isNil.
	m privGraphCenter: 1 @ 2.
	self assert: m privGraphCenter equals: 1 @ 2.
	m privGraphCenter: 3 @ 4.
	self assert: m privGraphCenter equals: 3 @ 4.