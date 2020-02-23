test
testNodeBorderWidth
	| d |
	d := self newDisplay.
	self assert: d nodeBorderWidth isInteger.