accessing variable
stringOfVar: vno breed: bno at: index

	| breed v |
	breed := self breedOf: bno.
	(breed isListVarNo: vno) ifTrue: [ 
		^ (self var: vno breed: bno list: index) asArray ].
	(breed isStringVarNo: vno) ifTrue: [ 
		^ self string: vno breed: bno at: index ].
	v := self var: vno breed: bno at: index.
	v isFloat ifTrue: [ ^ v printShowingDecimalPlaces: 1 ].
	^ v asString