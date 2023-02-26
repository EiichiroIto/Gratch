test
testLoop

	| p |
	p := self newProcess.
	p loop.
	self assert: p transition equals: #afterLoop.
	self
		assertCollection: p runningEvents
		equals: { EventId loopEventNo }