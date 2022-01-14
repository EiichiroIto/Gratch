test
testWhenDraggedDo
	| m b |
	m := self newManipulator.
	b := [ 1 + 2 ].
	self assert: m whenDraggedDo isNil.
	m whenDraggedDo: b.
	self assert: m whenDraggedDo identicalTo: b