test
testPrivGrWorld
	| r w |
	r := self newReader.
	self assert: r privGrWorld isNil.
	w := GrWorld new.
	r privGrWorld: w.
	self assert: r privGrWorld equals: w.