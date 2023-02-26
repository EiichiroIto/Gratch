test
testSingle

	| p |
	p := self newProcess.
	p single.
	self assert: p transition equals: #afterSingle.
	self
		assertCollection: p runningEvents
		equals: { EventId singleEventNo }