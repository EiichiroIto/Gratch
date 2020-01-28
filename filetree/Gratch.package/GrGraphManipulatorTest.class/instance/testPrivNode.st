test
testPrivNode
	| m |
	m := self newManipulator.
	self assert: m privNode isNil.
	m privNode: 10.
	self assert: m privNode equals: 10.
	m privNode: 20.
	self assert: m privNode equals: 20.