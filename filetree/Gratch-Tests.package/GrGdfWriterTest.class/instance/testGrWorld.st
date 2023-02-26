test
testGrWorld
	| w g |
	w := self newWriter.
	g := self newWorld.
	self assert: w grWorld isNil.
	w grWorld: g.
	self assert: w grWorld equals: g