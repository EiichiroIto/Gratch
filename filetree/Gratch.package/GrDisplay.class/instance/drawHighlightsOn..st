drawing
drawHighlightsOn: aCanvas
	| points |
	edgePoints ifNil: [ ^ self ].
	(edgePoints
		allSatisfy: [ :each | self graphRectangle containsPoint: each ])
		ifFalse: [ ^ self ].
	points := edgePoints
		collect: [ :each | self graphPointToWorld: each ].
	aCanvas
		line: points first
		to: points second
		color: self highlightColor