test
testSetRandomSeed

	| w t |
	w := self newWorld.
	t := self newThread: w.
	w createNodes: 4.
	t push: 123.
	t setRandomSeed.
	self assert: t stack size equals: 0.
	self assert: w random seed equals: 123