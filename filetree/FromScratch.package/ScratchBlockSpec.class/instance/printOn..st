printing
printOn: aStream

	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: label asString;
		nextPut: $,;
		nextPutAll: type asString;
		nextPut: $,;
		nextPutAll: selector asString;
		nextPut: $)