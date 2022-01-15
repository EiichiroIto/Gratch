test
testScreenRect
	| p r |
	p := self newPainter: nil.
	self assert: p screenRect isNil.
	r := 0 @ 0 corner: 100 @ 100.
	p screenRect: r.
	self assert: p screenRect equals: r