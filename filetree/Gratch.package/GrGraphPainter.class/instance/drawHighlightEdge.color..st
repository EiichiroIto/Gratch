api
drawHighlightEdge: anInteger color: aColor
	| n1 n2 p1 p2 |
	anInteger ifNil: [ ^ self ].
	n1 := grWorld n1At: anInteger.
	n2 := grWorld n2At: anInteger.
	p1 := grWorld pointAt: n1.
	(graphRect containsPoint: p1)
		ifFalse: [ ^ self ].
	p1 := self screenPointFrom: p1.
	p2 := grWorld pointAt: n2.
	(graphRect containsPoint: p2)
		ifFalse: [ ^ self ].
	p2 := self screenPointFrom: p2.
	canvas line: p1 to: p2 color: aColor