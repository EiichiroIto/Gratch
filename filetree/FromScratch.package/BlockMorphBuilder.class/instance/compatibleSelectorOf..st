private
compatibleSelectorOf: aSymbol

	| block |
	self assureLoadCompatibilityDictionary.
	block := compatibilityDictionary at: aSymbol ifAbsent: [ ^ nil ].
	^ self blockSelectorOf: block