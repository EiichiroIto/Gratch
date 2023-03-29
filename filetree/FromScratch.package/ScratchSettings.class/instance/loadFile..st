api
loadFile: aFileReference

	| dict |
	aFileReference isFile ifFalse: [ ^ self ].
	dict := STON fromString: aFileReference contents.
	dict isDictionary ifFalse: [ ^ self ].
	dict keysAndValuesDo: [ :key :value | 
		(self respondsTo: key asSymbol) ifTrue: [ 
			self perform: (key , ':') asSymbol with: value ] ].
	dictionary keysAndValuesRemove: [ :key :value | 
		(dict keys includes: key) not ]