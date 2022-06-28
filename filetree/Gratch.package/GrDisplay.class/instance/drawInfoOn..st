drawing
drawInfoOn: aCanvas
	| str |
	str := graphCenter rounded asString , '(' , (100 / zoom) rounded asString
		, '%)' , (info ifNil: [ '' ]).
	aCanvas
		drawString: str
		at: self topLeft + (6 @ 6)
		font: nil
		color: self theme backgroundColor.
	aCanvas
		drawString: str
		at: self topLeft + (5 @ 5)
		font: nil
		color: self borderColor