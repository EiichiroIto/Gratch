code generator
emitSubVarDeclaration: aMorph indent: indent

	| list |
	list := codeGenerator varNamesUsedIn: aMorph.
	list isEmpty ifTrue: [ ^ self ].
	indent = 0 ifTrue: [ ^ self ].
	codeGenerator
		generateIndent: indent;
		generateSubVars: list