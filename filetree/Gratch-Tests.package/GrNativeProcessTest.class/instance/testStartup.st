test
testStartup

	| p |
	p := self newProcess.
	p grWorld: self newWorld.
	p startup.
	self assert: p transition equals: #afterStartup.
	self
		assertCollection: p runningEvents
		equals: { EventId startupEventNo }