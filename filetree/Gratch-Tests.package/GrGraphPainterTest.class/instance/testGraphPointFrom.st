test
testGraphPointFrom
	| pos p |
	p := self newPainter: nil.
	p graphRect: (-1.0 @ -1.0 corner: 1.0 @ 1.0).
	p screenRect: (10 @ 20 corner: 20 @ 30).
	pos := p graphPointFrom: 10 @ 20.
	self assert: pos equals: -1 @ 1.
	pos := p graphPointFrom: 20 @ 30.
	self assert: pos equals: 1 @ -1.
	pos := p graphPointFrom: 10 @ 25.
	self assert: pos equals: -1 @ 0.
	pos := p graphPointFrom: 15 @ 30.
	self assert: pos equals: 0 @ -1.
	p graphRect: (-1 @ -1 corner: 1 @ 1).
	p screenRect: (0 @ 0 corner: 100 @ 100).
	pos := p graphPointFrom: 50 @ 50.
	self assert: pos equals: 0 @ 0.