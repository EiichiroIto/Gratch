printing
printOn: aStream

	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: blockSpecsInCategory keys size asString;
		nextPutAll: ' categories,';
		nextPutAll: blockSpecDictionary size asString;
		nextPutAll: ' blocks)'