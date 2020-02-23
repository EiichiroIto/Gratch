test
testGrDisplay
	| m d |
	m := GrGraphManipulator basicNew.
	self assert: m grDisplay isNil.
	d := GrDisplay new.
	m grDisplay: d.
	self assert: m grDisplay equals: d