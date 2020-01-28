accessing
columnTypeOf: aString
	ColumnType ifNil: [ self setupColumnType ].
	^ ColumnType at: aString ifAbsent: 'DOUBLE'