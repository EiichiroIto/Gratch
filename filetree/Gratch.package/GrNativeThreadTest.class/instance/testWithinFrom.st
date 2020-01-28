test
testWithinFrom
	| t w |
	w := self newWorld.
	w createNodes: 4.
	w pointAt: 1 put: 0 @ 0.
	w pointAt: 2 put: 1 @ 1.
	w pointAt: 3 put: 2 @ 2.
	w pointAt: 4 put: 4 @ 4.
	t := self newThread: w.
	t push1.
	t push: 1.5.
	t withinFrom.
	self assert: t stack size equals: 1.
	self assert: t stack first equals: 2.
	t := self newThread: w.
	t push: 4.
	t push: 2.9.
	t withinFrom.
	self assert: t stack size equals: 1.
	self assert: t stack first equals: 3.