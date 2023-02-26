test
testInitialize
	| g |
	g := self newWorld.
	self assert: g ticks equals: 0.