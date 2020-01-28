test
testModel
	| m |
	m := GrGraphManipulator basicNew.
	self assert: m model isNil.
	m model: 123.
	self assert: m model equals: 123