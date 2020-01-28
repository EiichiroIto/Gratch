private
dragEdgeTo: aPoint
	| p1 p2 |
	startPoint ifNil: [ ^ self ].
	p1 := grDisplay worldPointToGraph: startPoint.
	p2 := grDisplay worldPointToGraph: aPoint.
	grDisplay
		highlightEdgeFrom: p1 to: p2;
		changed