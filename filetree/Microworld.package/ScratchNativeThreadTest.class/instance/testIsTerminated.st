test
testIsTerminated

	| t |
	t := self newThread.
	self assert: t isTerminated equals: false.
	t isTerminated: true.
	self assert: t isTerminated equals: true.
	t isTerminated: false.
	self assert: t isTerminated equals: false