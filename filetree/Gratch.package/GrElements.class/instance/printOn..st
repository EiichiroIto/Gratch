printing
printOn: aStream
	aStream
		nextPutAll: self class asString;
		nextPutAll: breedNo asString;
		nextPut: $(;
		nextPutAll: self countAlive asString;
		nextPut: $).