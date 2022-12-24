utilities
writePOT: aCollection fileNamed: aString

	| file |
	file := FileSystem workingDirectory / aString.
	file isFile ifTrue: [ file delete ].
	file writeStreamDo: [ :stream | 
		aCollection asSortedCollection do: [ :each | 
			stream
				nextPutAll: 'msgid "';
				nextPutAll: each;
				nextPut: $";
				nextPutAll: String crlf;
				nextPutAll: 'msgstr ""';
				nextPutAll: String crlf;
				nextPutAll: String crlf ] ]