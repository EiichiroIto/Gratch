test
testGrWorld
	| m w |
	m := GrGraphManipulator basicNew.
	self assert: m grWorld isNil.
	w := GrNativeWorld new.
	m grWorld: w.
	self assert: m grWorld equals: w