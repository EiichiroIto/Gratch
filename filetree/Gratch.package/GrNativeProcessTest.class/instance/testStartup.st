test
testStartup
	| p |
	p := self newProcess.
	p startup.
	self assert: p privTransition equals: #afterStartup.
	self assertCollection: p privRunningEvents equals: {EventId startupEventNo}.