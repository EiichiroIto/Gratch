test
testLoop
	| p |
	p := self newProcess.
	p loop.
	self assert: p privTransition equals: #afterLoop.
	self assertCollection: p privRunningEvents equals: {EventId loopEventNo}.