test
testDefaultNodeExtent
	| d p |
	d := self newDisplay.
	p := d defaultNodeExtent.
	self assert: p isPoint.
	self assert: p x > 0.
	self assert: p y > 0.