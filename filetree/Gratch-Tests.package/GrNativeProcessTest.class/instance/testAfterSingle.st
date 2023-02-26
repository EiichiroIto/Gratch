test
testAfterSingle

	| p w |
	w := self newWorld.
	p := self newProcess.
	p runningEvents: #(  ).
	p transition: #afterSingle.
	p afterSingle.
	self assert: p transition equals: #idle.
	self assert: p runningEvents isEmpty.
	p runningEvents: #( 8 9 ) asSet.
	p transition: #afterSingle.
	p afterSingle.
	self assert: p transition equals: #afterSingle.
	self assert: (p runningEvents isKindOf: Set).
	self assert: p runningEvents size equals: 2.
	self assert: (p runningEvents includes: 8).
	self assert: (p runningEvents includes: 9)