event handling
mouseMoveAt: aPoint
	| p1 p2 p |
	mode = #startDrag
		ifFalse: [ ^ self ].
	p1 := grDisplay worldPointToGraph: startPoint.
	p2 := grDisplay worldPointToGraph: aPoint.
	whenDraggingDo
		ifNotNil: [ (whenDraggingDo cull: p1 cull: p2 cull: node)
				ifTrue: [ ^ self ] ].
	p := (p1 - p2) / grDisplay zoom.
	grDisplay graphCenter: graphCenter + (p x @ p y negated)