code generator
generateBegin: aSymbol morph: aMorph

	| selector |
	selector := aSymbol copyWithout: $:.
	selector := ('generate' , selector asCamelCase , 'Begin:') asSymbol.
	self perform: selector with: aMorph