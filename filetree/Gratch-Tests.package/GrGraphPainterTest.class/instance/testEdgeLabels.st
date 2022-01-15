test
testEdgeLabels
	| p |
	p := self newPainter: nil.
	self assert: p edgeLabels isNil.
	p edgeLabels: #(1 2 3).
	self assertCollection: p edgeLabels equals: #(1 2 3)