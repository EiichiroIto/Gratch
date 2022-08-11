accessing
at: aSymbol put: anObject

	self perform: (aSymbol , ':') asSymbol with: anObject