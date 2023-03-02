test
testGetId
	| t |
	t := self newThread.
	t id: 10.
	self assert: t stack size equals: 0.
	t getId.
	self assert: t pop equals: 10.