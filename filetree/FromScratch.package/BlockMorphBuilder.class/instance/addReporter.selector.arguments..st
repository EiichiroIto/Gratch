api
addReporter: aString selector: aSymbol arguments: aCollection

	| blockSpec |
	blockSpec := AbstractBlockSpec
		             reporter: aString
		             selector: aSymbol
		             arguments: aCollection.
	self registerBlockSpec: blockSpec asCategory: lastCategory