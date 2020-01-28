test
testGraphCenter
	| d |
	d := self newDisplay.
	self assert: d graphCenter equals: d graphRectangle center.
	d graphCenter: 2 @ 3.
	self assert: d graphCenter equals: 2 @ 3.
	d graphCenter: 5.123 @ 6.123.
	self assert: d graphCenter equals: 5.2 @ 6.2