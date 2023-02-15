api
addBooleanReporter: aString selector: aSymbol arguments: aCollection

	| blockSpec |
	blockSpec := AbstractBlockSpec
		             booleanReporter: aString
		             selector: aSymbol
		             arguments: aCollection.
	self registerBlockSpec: blockSpec asCategory: lastCategory