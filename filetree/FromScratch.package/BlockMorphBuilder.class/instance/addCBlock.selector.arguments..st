api
addCBlock: aString selector: aSymbol arguments: aCollection

	| blockSpec |
	blockSpec := AbstractBlockSpec
		             cBlock: aString
		             selector: aSymbol
		             arguments: aCollection.
	self registerBlockSpec: blockSpec asCategory: lastCategory