test
testDefaultGraphExtent
	| d p |
	d := self newDisplay.
	p := d defaultGraphExtent.
	self assert: p equals: 200 @ 200.