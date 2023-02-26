printing
printOn: aStream
	aStream
		nextPutAll: self class asString;
		nextPutAll: self breedNo asString;
		nextPut: $(;
		nextPutAll: self countAlive asString;
		nextPut: $).