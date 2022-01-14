test
testWhenDraggingDo
	| m b |
	m := self newManipulator.
	b := [ 1 + 2 ].
	self assert: m whenDraggingDo isNil.
	m whenDraggingDo: b.
	self assert: m whenDraggingDo identicalTo: b