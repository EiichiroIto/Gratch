private
writeColumns: aCollection
	aCollection
		do: [ :each | 
			stream nextPutAll: each.
			stream
				nextPut: Character space;
				nextPutAll: (self class columnTypeOf: each) ]
		separatedBy: [ stream nextPut: $, ]