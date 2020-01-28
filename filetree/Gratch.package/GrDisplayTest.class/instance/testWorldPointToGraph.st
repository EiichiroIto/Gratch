test
testWorldPointToGraph
	| d p |
	d := self newDisplay.
	d graphRectangle: (-1.0 @ -1.0 corner: 1.0 @ 1.0).
	d bounds: (10 @ 20 corner: 20 @ 30).
	p := d worldPointToGraph: 10 @ 20.
	self assert: p equals: -1 @ 1.
	p := d worldPointToGraph: 20 @ 30.
	self assert: p equals: 1 @ -1.
	p := d worldPointToGraph: 10 @ 25.
	self assert: p equals: -1 @ 0.
	p := d worldPointToGraph: 15 @ 30.
	self assert: p equals: 0 @ -1.
	d graphRectangle: (-1 @ -1 corner: 1 @ 1).
	d bounds: (0 @ 0 corner: 100 @ 100).
	p := d worldPointToGraph: 50 @ 50.
	self assert: p equals: 0 @ 0.