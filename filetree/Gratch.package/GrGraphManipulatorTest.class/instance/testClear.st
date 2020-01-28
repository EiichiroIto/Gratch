test
testClear
	| m |
	m := self newManipulator.
	m
		privMode: #abc;
		privStartPoint: 1 @ 2;
		privGraphCenter: 3 @ 4;
		privNode: 10.
	m clear.
	self assert: m privMode isNil.
	self assert: m privStartPoint isNil.
	self assert: m privGraphCenter isNil.
	self assert: m privNode isNil