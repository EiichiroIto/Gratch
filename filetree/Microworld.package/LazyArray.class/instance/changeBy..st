accessing
changeBy: aNumber
	array
		ifNil: [ defaultValue ifNotNil: [ defaultValue := defaultValue + aNumber ] ]
		ifNotNil: [ array += aNumber ]