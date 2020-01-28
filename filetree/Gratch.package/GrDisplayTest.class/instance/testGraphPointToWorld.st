test
testGraphPointToWorld
	| d p |
	d := self newDisplay.
	d graphRectangle: (-1 @ -1 corner: 1 @ 1).
	d bounds: (10 @ 20 corner: 22 @ 40).
	p := d graphPointToWorld: 0 @ 0.
	self assert: p equals: 16 @ 30.
	p := d graphPointToWorld: 1 @ 1.
	self assert: p equals: 22 @ 20.
	p := d graphPointToWorld: 0 @ 0.5.
	self assert: p equals: 16 @ 25.
	p := d graphPointToWorld: 0.5 @ -1.
	self assert: p equals: 19 @ 40.
	d graphRectangle: (-1 @ -1 corner: 1 @ 1).
	d bounds: (0 @ 0 corner: 100 @ 100).
	p := d graphPointToWorld: 0.5 @ 0.5.
	self assert: p equals: 75 @ 25.