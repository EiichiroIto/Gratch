test
testBgColor
	| p |
	p := self newPainter: nil.
	self assert: p bgColor isNil.
	p bgColor: Color red.
	self assert: p bgColor equals: Color red.
	p bgColor: Color black.
	self assert: p bgColor equals: Color black
