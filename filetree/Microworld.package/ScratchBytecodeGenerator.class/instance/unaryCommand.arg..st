code injection
unaryCommand: aSymbol arg: anObject
	self appendValue: anObject.
	self appendSymbol: aSymbol.
	^ nil