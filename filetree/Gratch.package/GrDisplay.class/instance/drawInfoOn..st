drawing
drawInfoOn: aCanvas
	| str |
	str := graphCenter rounded asString , '(' , (100 / zoom) rounded asString
		, '%)' , (info ifNil: [ '' ]).
	aCanvas
		drawString: str
		at: self topLeft + (5 @ 5)
		font: nil
		color: Color white