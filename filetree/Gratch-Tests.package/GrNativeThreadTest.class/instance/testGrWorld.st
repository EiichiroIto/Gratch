test
testGrWorld
	| w1 w2 e |
	w1 := self newWorld.
	e := self newThread: w1.
	self assert: e grWorld equals: w1.
	w2 := self newWorld.
	e grWorld: w2.
	self assert: e grWorld equals: w2.