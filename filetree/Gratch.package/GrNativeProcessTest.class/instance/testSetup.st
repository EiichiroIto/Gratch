test
testSetup
	| p |
	p := self newProcess.
	p setup.
	self assert: p privTransition equals: #afterSetup.
	self assertCollection: p privRunningEvents equals: {EventId setupEventNo}.