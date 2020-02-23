test
testDefaultGraphRectangle
	| d r |
	d := self newDisplay.
	r := d defaultGraphRectangle.
	self assert: r isRectangle.
	self assert: r width > 0.
	self assert: r height > 0.