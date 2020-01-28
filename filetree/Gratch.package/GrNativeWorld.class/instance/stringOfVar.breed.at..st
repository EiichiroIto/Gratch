accessing variable
stringOfVar: vno breed: bno at: index
	| v |
	(self isListVar: vno breed: bno)
		ifTrue: [ ^ (self var: vno breed: bno list: index) asArray ].
	(self isStringVar: vno breed: bno)
		ifTrue: [ ^ self string: vno breed: bno at: index ].
	v := self var: vno breed: bno at: index.
	v isFloat
		ifTrue: [ ^ v printShowingDecimalPlaces: 1 ].
	^ v asString