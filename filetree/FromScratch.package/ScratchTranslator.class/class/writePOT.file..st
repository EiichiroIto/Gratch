utilities
writePOT: aCollection file: aFileReference

	aFileReference isFile ifTrue: [ aFileReference delete ].
	aFileReference writeStreamDo: [ :stream | 
		aCollection asSortedCollection do: [ :each | 
			stream
				nextPutAll: 'msgid "';
				nextPutAll: each;
				nextPut: $";
				nextPutAll: String crlf;
				nextPutAll: 'msgstr ""';
				nextPutAll: String crlf;
				nextPutAll: String crlf ] ]