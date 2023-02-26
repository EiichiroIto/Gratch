code generator
generateCenter: aSymbol morph: aMorph

	| selector |
	selector := aSymbol copyWithout: $:.
	selector := ('generate' , selector asCamelCase , 'Center:') asSymbol.
	self perform: selector with: aMorph