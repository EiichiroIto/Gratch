test
testGrWorld
	| w p |
	p := self newPainter: nil.
	self assert: p grWorld isNil.
	w := self newWorld.
	p grWorld: w.
	self assert: p grWorld identicalTo: w