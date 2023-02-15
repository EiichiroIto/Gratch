printing
printOn: aStream

	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: categoryName asString;
		nextPut: $)