test
testAfterSingle
	| p w |
	w := self newWorld.
	p := w newProcess program: GrProgram new.
	p privRunningEvents: #().
	p privTransition: #afterSingle.
	p afterSingle.
	self assert: p privTransition equals: #idle.
	self assert: p privRunningEvents isEmpty.
	p privRunningEvents: #(8 9) asSet.
	p privTransition: #afterSingle.
	p afterSingle.
	self assert: p privTransition equals: #afterSingle.
	self assert: (p privRunningEvents isKindOf: Set).
	self assert: p privRunningEvents size equals: 2.
	self assert: (p privRunningEvents includes: 8).
	self assert: (p privRunningEvents includes: 9).