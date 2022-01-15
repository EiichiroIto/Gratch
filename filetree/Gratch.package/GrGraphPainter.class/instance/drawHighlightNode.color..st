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
		color: aColor
		borderWidth: 0
		borderColor: Color red