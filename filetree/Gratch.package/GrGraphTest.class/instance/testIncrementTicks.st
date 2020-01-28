test
testIncrementTicks
	| o |
	o := self newGraph.
	self assert: o ticks equals: 0.
	o incrementTicks.
	self assert: o ticks equals: 1.
	o incrementTicks.
	self assert: o ticks equals: 2.