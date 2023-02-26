test
testGrWorld

	| w p |
	p := self newProcess.
	w := self newWorld.
	p grWorld: w.
	self assert: p grWorld identicalTo: w