test
testNodeRectangleCenterAt
	| d rect |
	d := self newDisplay.
	d bounds: (0 @ 0 corner: 100 @ 100).
	self assert: (d nodeRectangleCenterAt: 0 @ 0) isRectangle.
	rect := d nodeRectangleCenterAt: 50 @ 50.
	self assert: rect center equals: 50 @ 50.
	self assert: rect width equals: d nodeExtent x.
	self assert: rect height equals: d nodeExtent y.