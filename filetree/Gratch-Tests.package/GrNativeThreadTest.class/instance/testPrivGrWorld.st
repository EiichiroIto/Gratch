test
testPrivGrWorld
	| w1 w2 e |
	w1 := self newWorld.
	e := self newThread: w1.
	self assert: e privGrWorld equals: w1.
	w2 := self newWorld.
	e privGrWorld: w2.
	self assert: e privGrWorld equals: w2.