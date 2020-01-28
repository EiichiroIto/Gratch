test
testPrivEdgePoints
	| d |
	d := self newDisplay.
	self assert: d privEdgePoints isNil.
	d privEdgePoints: {1 . 2}.
	self assertCollection: d privEdgePoints equals: {1 . 2}.
	d privEdgePoints: {3 . 4}.
	self assertCollection: d privEdgePoints equals: {3 . 4}