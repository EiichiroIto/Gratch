test
testRunningEvents

	| p |
	p := self newProcess.
	self assert: p runningEvents isArray.
	self assert: p runningEvents isEmpty.
	p runningEvents: #( 1 2 3 ).
	self assertCollection: p runningEvents equals: #( 1 2 3 )