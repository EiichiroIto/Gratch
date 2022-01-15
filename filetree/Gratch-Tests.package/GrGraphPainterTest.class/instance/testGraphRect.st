test
testGraphRect
	| p r |
	p := self newPainter: nil.
	self assert: p graphRect isNil.
	r := 0 @ 0 corner: 100 @ 100.
	p graphRect: r.
	self assert: p graphRect equals: r.
	r := 10 @ 10 corner: 10 @ 10.
	p graphRect: r.
	self assert: p graphRect equals: (10 @ 10 corner: 10.1 @ 10.1)