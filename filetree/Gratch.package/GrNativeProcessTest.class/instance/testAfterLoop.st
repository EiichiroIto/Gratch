test
testAfterLoop
	| p w |
	w := self newWorld.
	p := w newProcess program: GrProgram new.
	p privRunningEvents: #().
	p privTransition: #afterLoop.
	p afterLoop.
	self assert: p privTransition equals: #afterLoop.
	self assertCollection: p privRunningEvents equals: {EventId loopEventNo}.
	p privRunningEvents: #(8 9) asSet.
	p afterLoop.
	self assert: p privTransition equals: #afterLoop.
	self assert: (p privRunningEvents isKindOf: Set).
	self assert: p privRunningEvents size equals: 2.
	self assert: (p privRunningEvents includes: 8).
	self assert: (p privRunningEvents includes: 9).