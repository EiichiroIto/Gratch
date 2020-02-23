test
testGrWorld
	| g |
	g := GrGraph new.
	self assert: g grWorld isNil.
	g grWorld: 123.
	self assert: g grWorld equals: 123.