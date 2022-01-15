test
testBgColor
	| p |
	p := self newPainter: nil.
	self assert: p bgColor equals: Color black.
	p bgColor: Color red.
	self assert: p bgColor equals: Color red