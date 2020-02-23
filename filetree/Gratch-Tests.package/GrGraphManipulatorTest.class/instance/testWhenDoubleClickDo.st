test
testWhenDoubleClickDo
	| m |
	m := self newManipulator.
	self assert: m whenDoubleClickDo isNil.
	m whenDoubleClickDo: 123.
	self assert: m whenDoubleClickDo equals: 123