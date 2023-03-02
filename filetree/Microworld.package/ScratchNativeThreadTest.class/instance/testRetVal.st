test
testRetVal

	| t |
	t := self newThread.
	self assert: t retVal equals: 0.
	t retVal: 123.
	self assert: t retVal equals: 123