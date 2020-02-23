test
testPrivGrWorld
	| w g |
	w := self newWriter.
	g := self newWorld.
	self assert: w privGrWorld isNil.
	w privGrWorld: g.
	self assert: w privGrWorld equals: g