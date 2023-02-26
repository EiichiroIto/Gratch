test
testEvent

	| p |
	p := self newProcess.
	p event: 10.
	self assert: p transition equals: #afterSingle.
	self assertCollection: p runningEvents equals: { 10 }