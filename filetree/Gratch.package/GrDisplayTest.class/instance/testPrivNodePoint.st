test
testPrivNodePoint
	| d |
	d := self newDisplay.
	self assert: d privNodePoint isNil.
	d privNodePoint: 1 @ 2.
	self assertCollection: d privNodePoint equals: 1 @ 2.
	d privNodePoint: 3 @ 4.
	self assertCollection: d privNodePoint equals: 3 @ 4