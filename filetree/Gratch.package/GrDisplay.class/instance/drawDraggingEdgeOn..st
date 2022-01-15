drawing
drawDraggingEdgeOn: aCanvas
	| points |
	edgePoints ifNil: [ ^ self ].
	(edgePoints
		allSatisfy: [ :each | self graphRectangle containsPoint: each ])
		ifFalse: [ ^ self ].
	points := edgePoints
		collect: [ :each | painter screenPointFrom: each ].
	aCanvas
		line: points first
		to: points second
		color: self highlightColor