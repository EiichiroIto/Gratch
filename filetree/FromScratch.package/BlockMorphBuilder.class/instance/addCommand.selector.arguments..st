api
addCommand: aString selector: aSymbol arguments: aCollection

	| blockSpec |
	blockSpec := AbstractBlockSpec
		             command: aString
		             selector: aSymbol
		             arguments: aCollection.
	self registerBlockSpec: blockSpec asCategory: lastCategory