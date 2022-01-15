test
testEdgeCache
	| p |
	p := self newPainter: nil.
	self assert: p edgeCache isNil