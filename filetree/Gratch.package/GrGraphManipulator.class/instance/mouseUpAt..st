event handling
mouseUpAt: aPoint
	mode = #click
		ifTrue: [ whenClickedDo
				ifNotNil: [ whenClickedDo cull: (grDisplay worldPointToGraph: startPoint) ] ].
	mode = #startDrag
		ifTrue: [ whenDraggedDo
				ifNotNil: [ whenDraggedDo cull: node cull: (self nodeAt: aPoint) ] ].
	self clear