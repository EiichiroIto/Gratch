test
testSetup

	| p |
	p := self newProcess.
	p setup.
	self assert: p transition equals: #afterSetup.
	self
		assertCollection: p runningEvents
		equals: { EventId setupEventNo }