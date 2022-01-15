test
testNodeRectangleCenterAt
	| p rect |
	p := self newPainter: nil.
	p screenRect: (0 @ 0 corner: 100 @ 100).
	self assert: (p nodeRectangleCenterAt: 0 @ 0) isRectangle.
	rect := p nodeRectangleCenterAt: 50 @ 50.
	self assert: rect center equals: 50 @ 50.
	self assert: rect width equals: p nodeExtent x.
	self assert: rect height equals: p nodeExtent y.