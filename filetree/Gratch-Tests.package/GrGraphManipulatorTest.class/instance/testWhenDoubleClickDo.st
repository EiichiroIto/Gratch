test
testWhenDoubleClickDo
	| m b |
	m := self newManipulator.
	b := [ 1 + 2 ].
	self assert: m whenDoubleClickDo isNil.
	m whenDoubleClickDo: b.
	self assert: m whenDoubleClickDo identicalTo: b