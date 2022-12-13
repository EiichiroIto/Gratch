utilities
generatePOTFile

	"ScratchTranslator generatePOTFile"

	| file strings |
	file := FileSystem workingDirectory / 'app.pot'.
	file isFile ifTrue: [ file delete ].
	strings := Set new.
	self addLocalizedTextsTo: strings.
	self addBlockDefsTo: strings.
	file writeStreamDo: [ :stream | 
		strings asOrderedCollection sorted do: [ :each | 
			stream
				nextPutAll: 'msgid "';
				nextPutAll: each;
				nextPut: $";
				nextPutAll: String crlf;
				nextPutAll: 'msgstr ""';
				nextPutAll: String crlf;
				nextPutAll: String crlf ] ]