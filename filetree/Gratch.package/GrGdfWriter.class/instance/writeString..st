private
writeString: aString
	stream
		nextPut: $';
		nextPutAll: aString;
		nextPut: $'