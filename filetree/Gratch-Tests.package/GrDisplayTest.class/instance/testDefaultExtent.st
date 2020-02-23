test
testDefaultExtent
	| d p |
	d := self newDisplay.
	p := d defaultExtent.
	self assert: p equals: 300 @ 300.