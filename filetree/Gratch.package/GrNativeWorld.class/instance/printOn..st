printing
printOn: aStream
	aStream
		nextPutAll: 'GrMicroWorld(';
		print: self identityHash;
		nextPut: $).