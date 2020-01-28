test
testSingle
	| p |
	p := self newProcess.
	p single.
	self assert: p privTransition equals: #afterSingle.
	self assertCollection: p privRunningEvents equals: {EventId singleEventNo}.