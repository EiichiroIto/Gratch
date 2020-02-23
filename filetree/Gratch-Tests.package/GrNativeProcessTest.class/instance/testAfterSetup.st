test
testAfterSetup
	| p w |
	w := self newWorld.
	p := w newProcess program: GrProgram new.
	p privRunningEvents: #().
	p privTransition: #afterSetup.
	p afterSetup.
	self assert: p privTransition equals: #idle.
	self assert: p privRunningEvents isEmpty.
	p privRunningEvents: #(8 9) asSet.
	p privTransition: #afterSetup.
	p afterSetup.
	self assert: p privTransition equals: #afterSetup.
	self assert: (p privRunningEvents isKindOf: Set).
	self assert: p privRunningEvents size equals: 2.
	self assert: (p privRunningEvents includes: 8).
	self assert: (p privRunningEvents includes: 9).