printing
printOn: aStream

	aStream
		nextPutAll: self class name;
		nextPut: $(.
	arg ifNotNil: [ 
		aStream
			nextPut: $%;
			nextPut: arg.
		options ifNotNil: [ 
			aStream
				nextPut: $,;
				nextPutAll: options size asString ] ].
	aStream nextPut: $)