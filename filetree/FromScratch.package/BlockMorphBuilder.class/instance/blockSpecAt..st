api
blockSpecAt: aSymbol

	| selector |
	blockSpecDictionary at: aSymbol ifPresent: [ :obj | ^ obj ].
	selector := self compatibleSelectorOf: aSymbol.
	selector ifNil: [ ^ nil ].
	^ blockSpecDictionary at: selector