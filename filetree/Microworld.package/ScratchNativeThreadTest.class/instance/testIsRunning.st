test
testIsRunning

	| t |
	t := self newThread.
	self assert: t isRunning equals: false.
	t isRunning: true.
	self assert: t isRunning equals: true.
	t isRunning: false.
	self assert: t isRunning equals: false