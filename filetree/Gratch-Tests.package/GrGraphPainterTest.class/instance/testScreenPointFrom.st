test
testScreenPointFrom
	| p pos |
	p := self newPainter: nil.
	p graphRect: (-1 @ -1 corner: 1 @ 1).
	p screenRect: (10 @ 20 corner: 22 @ 40).
	pos := p screenPointFrom: 0 @ 0.
	self assert: pos equals: 16 @ 30.
	pos := p screenPointFrom: 1 @ 1.
	self assert: pos equals: 22 @ 20.
	pos := p screenPointFrom: 0 @ 0.5.
	self assert: pos equals: 16 @ 25.
	pos := p screenPointFrom: 0.5 @ -1.
	self assert: pos equals: 19 @ 40.
	p graphRect: (-1 @ -1 corner: 1 @ 1).
	p screenRect: (0 @ 0 corner: 100 @ 100).
	pos := p screenPointFrom: 0.5 @ 0.5.
	self assert: pos equals: 75 @ 25.