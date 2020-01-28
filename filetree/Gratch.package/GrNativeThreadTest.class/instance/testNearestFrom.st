test
testNearestFrom
	| t w |
	w := self newWorld.
	w createNodes: 4.
	w pointAt: 1 put: 0 @ 0.
	w pointAt: 2 put: 1 @ 1.
	w pointAt: 3 put: 2 @ 2.
	w pointAt: 4 put: 4 @ 4.
	t := self newThread: w.
	t push1.
	t nearestFrom.
	self assert: t stack size equals: 1.
	self assert: t stack first equals: 2.
	t := self newThread: w.
	t push: 4.
	t nearestFrom.
	self assert: t stack size equals: 1.
	self assert: t stack first equals: 3