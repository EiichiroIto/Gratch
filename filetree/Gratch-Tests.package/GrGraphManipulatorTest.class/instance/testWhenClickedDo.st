test
testWhenClickedDo
	| m b |
	m := self newManipulator.
	b := [ 1 + 2 ].
	self assert: m whenClickedDo isNil.
	m whenClickedDo: b.
	self assert: m whenClickedDo identicalTo: b