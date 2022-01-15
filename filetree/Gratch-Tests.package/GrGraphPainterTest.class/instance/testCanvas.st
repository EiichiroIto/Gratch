test
testCanvas
	| p c |
	p := self newPainter: nil.
	self assert: p canvas isNil.
	c := FormCanvas new.
	p canvas: c.
	self assert: p canvas identicalTo: c