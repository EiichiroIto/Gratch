test
testGrWorld
	| g d |
	d := self newDisplay.
	self assert: d grWorld isNil.
	g := self newWorld.
	d grWorld: g.
	self assert: d grWorld equals: g.