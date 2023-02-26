test
testGrWorld
	| r w |
	r := self newReader.
	self assert: r grWorld isNil.
	w := GrNativeWorld new.
	r grWorld: w.
	self assert: r grWorld equals: w.