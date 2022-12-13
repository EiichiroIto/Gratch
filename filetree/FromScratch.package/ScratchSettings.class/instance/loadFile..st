api
loadFile: aFileReference

	| dict |
	aFileReference isFile ifFalse: [ ^ self ].
	dict := STON fromString: aFileReference contents.
	dict isDictionary ifFalse: [ ^ self ].
	dict keysDo: [ :each | 
		(self respondsTo: each asSymbol) ifFalse: [ dict removeKey: each ] ].
	dictionary := dict