test
testClearTicks
	| o |
	o := self newWorld.
	self assert: o ticks equals: 0.
	o incrementTicks.
	self assert: o ticks equals: 1.
	o incrementTicks.
	self assert: o ticks equals: 2.
	o clearTicks.
	self assert: o ticks equals: 0.