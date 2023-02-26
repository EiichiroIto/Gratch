test
testAfterLoop

	| p w |
	w := self newWorld.
	p := self newProcess.
	p runningEvents: #(  ).
	p transition: #afterLoop.
	p afterLoop.
	self assert: p transition equals: #afterLoop.
	self
		assertCollection: p runningEvents
		equals: { EventId loopEventNo }.
	p runningEvents: #( 8 9 ) asSet.
	p afterLoop.
	self assert: p transition equals: #afterLoop.
	self assert: (p runningEvents isKindOf: Set).
	self assert: p runningEvents size equals: 2.
	self assert: (p runningEvents includes: 8).
	self assert: (p runningEvents includes: 9)