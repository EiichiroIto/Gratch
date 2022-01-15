test
testExpandGraphRect
	| p |
	p := self newPainter: nil.
	p graphRect: (10 @ 10 corner: 20 @ 20).
	p expandGraphRect.
	self assert: p graphRect equals: (9 @ 9 corner: 21 @ 21)