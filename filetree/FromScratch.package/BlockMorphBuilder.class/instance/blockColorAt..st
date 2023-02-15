api
blockColorAt: aSymbol

	| spec |
	spec := blockSpecDictionary at: aSymbol ifAbsent: [ ^ Color red ].
	^ spec color