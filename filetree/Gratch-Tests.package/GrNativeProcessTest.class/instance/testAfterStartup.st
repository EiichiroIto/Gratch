test
testAfterStartup

	| p w |
	w := self newWorld.
	p := self newProcess.
	p runningEvents: #(  ).
	p transition: #afterStartup.
	p afterStartup.
	self assert: p transition equals: #afterSetup.
	self
		assertCollection: p runningEvents
		equals: { EventId setupEventNo }.
	p runningEvents: #( 8 9 ) asSet.
	p transition: #afterStartup.
	p afterStartup.
	self assert: p transition equals: #afterStartup.
	self assert: (p runningEvents isKindOf: Set).
	self assert: p runningEvents size equals: 2.
	self assert: (p runningEvents includes: 8).
	self assert: (p runningEvents includes: 9)