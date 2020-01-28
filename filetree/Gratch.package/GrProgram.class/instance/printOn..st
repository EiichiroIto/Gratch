printing
printOn: aStream
	aStream
		nextPutAll: self class asString;
		nextPut: $(;
		nextPutAll: codes size asString;
		nextPut: $)