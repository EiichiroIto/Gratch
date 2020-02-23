test
testPrivGrWorld
	| w p |
	p := self newProcess.
	w := self newWorld.
	p privGrWorld: w.
	self assert: p privGrWorld equals: w.