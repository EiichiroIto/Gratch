code generator
emitSubVarDeclaration: aMorph indent: indent

	| list |
	list := generator varNamesUsedIn: aMorph.
	list isEmpty ifTrue: [ ^ self ].
	indent = 0 ifTrue: [ ^ self ].
	generator
		generateIndent: indent;
		generateSubVars: list