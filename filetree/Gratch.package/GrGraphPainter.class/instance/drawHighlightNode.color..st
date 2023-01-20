api
drawHighlightNode: anInteger color: aColor
	| p |
	anInteger ifNil: [ ^ self ].
	p := grWorld pointAt: anInteger.
	(graphRect containsPoint: p)
		ifFalse: [ ^ self ].
	p := self screenPointFrom: p.
	canvas
		fillOval: (self nodeRectangleCenterAt: p)
		color: Color transparent
		borderWidth: self highlightNodeBorderWidth
		borderColor: aColor