private
stringOfVar: vno breed: bno at: index
	| v |
	v := grWorld stringOfVar: vno breed: bno at: index.
	v isString
		ifTrue: [ ^ v ].
	v isFloat
		ifTrue: [ ^ v printShowingDecimalPlaces: 1 ].
	^ v asString