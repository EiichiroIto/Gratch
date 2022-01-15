event handling
mouseMoveAt: aPoint
	| p1 p2 |
	mode = #startDrag
		ifFalse: [ ^ self ].
	p1 := grDisplay graphPointFrom: startPoint.
	p2 := grDisplay graphPointFrom: aPoint.
	whenDraggingDo
		ifNotNil: [ (whenDraggingDo cull: p1 cull: p2 cull: node)
				ifTrue: [ ^ self ] ].
	grDisplay graphCenter: graphCenter + p1 - p2