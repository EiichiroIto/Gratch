api
addTimed: aString selector: aSymbol arguments: aCollection

	| blockSpec |
	blockSpec := AbstractBlockSpec
		             timed: aString
		             selector: aSymbol
		             arguments: aCollection.
	self registerBlockSpec: blockSpec asCategory: lastCategory