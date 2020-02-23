test
testHighlightEdgeFromTo
	| d |
	d := self newDisplay.
	self assert: d privEdgePoints isNil.
	d highlightEdgeFrom: 1 @ 2 to: 3 @ 4.
	self assert: d privEdgePoints size equals: 2.
	self assert: d privEdgePoints first equals: 1 @ 2.
	self assert: d privEdgePoints second equals: 3 @ 4