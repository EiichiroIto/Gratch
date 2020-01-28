test
testGrManipulator
	| d m |
	d := self newDisplay.
	self assert: d grManipulator isNil.
	m := self newManipulator.
	d grManipulator: m.
	self assert: d grManipulator equals: m