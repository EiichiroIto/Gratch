test
testClearDraggingEdge
	| d |
	d := self newDisplay.
	self assert: d privEdgePoints isNil.
	d
		privEdgePoints:
			{(1 @ 2).
			(3 @ 4)}.
	self assert: d privEdgePoints notNil.
	d clearDraggingEdge.
	self assert: d privEdgePoints isNil