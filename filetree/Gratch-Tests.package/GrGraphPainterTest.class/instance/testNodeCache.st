test
testNodeCache
	| p |
	p := self newPainter: nil.
	self assert: p nodeCache isNil