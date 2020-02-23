test
testEvent
	| p |
	p := self newProcess.
	p event: 10.
	self assert: p privTransition equals: #afterSingle.
	self assertCollection: p privRunningEvents equals: {10}.