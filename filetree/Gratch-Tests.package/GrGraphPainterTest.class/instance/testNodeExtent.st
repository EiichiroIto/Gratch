test
testNodeExtent
	| p pos |
	p := self newPainter: nil.
	pos := p nodeExtent.
	self assert: pos isPoint.
	self assert: pos x > 0.
	self assert: pos y > 0.