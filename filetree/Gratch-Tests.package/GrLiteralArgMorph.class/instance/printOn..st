printing
printOn: aStream

	aStream
		nextPutAll: 'literal(';
		nextPutAll: value asString;
		nextPut: $)