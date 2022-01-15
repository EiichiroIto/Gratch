test
testNodeLabels
	| p |
	p := self newPainter: nil.
	self assert: p nodeLabels isNil.
	p nodeLabels: #(1 2 3).
	self assertCollection: p nodeLabels equals: #(1 2 3)