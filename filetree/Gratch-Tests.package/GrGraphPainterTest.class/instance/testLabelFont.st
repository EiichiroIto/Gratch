test
testLabelFont

	| p |
	p := self newPainter: nil.
	self assert: (p labelFont isKindOf: LogicalFont)