code generator
generateEnd: aSymbol morph: aMorph

	| selector |
	selector := aSymbol copyWithout: $:.
	selector := ('generate' , selector asCamelCase , 'End:') asSymbol.
	self perform: selector with: aMorph