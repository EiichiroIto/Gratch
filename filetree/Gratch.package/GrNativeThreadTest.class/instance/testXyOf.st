test
testXyOf
	| t w |
	w := self newWorld.
	w createNodes: 4.
	w pointAt: 1 put: 1 @ 2.
	w pointAt: 2 put: 3 @ 4.
	t := self newThread: w.
	t push: 1.
	t xyOf.
	self assert: t stack size equals: 2.
	self assert: t pop equals: 2.
	self assert: t pop equals: 1.
	t := self newThread: w.
	t push: 2.
	t xyOf.
	self assert: t stack size equals: 2.
	self assert: t pop equals: 4.
	self assert: t pop equals: 3.