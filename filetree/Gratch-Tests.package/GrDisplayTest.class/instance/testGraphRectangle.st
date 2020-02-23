test
testGraphRectangle
	| d |
	d := self newDisplay.
	self assert: d graphRectangle equals: d defaultGraphRectangle.
	d graphRectangle: (0 @ 0 corner: 10 @ 10).
	self assert: d graphRectangle equals: (0 @ 0 corner: 10 @ 10)