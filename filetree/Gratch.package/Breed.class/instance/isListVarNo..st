testing
isListVarNo: vno
	vno = 0
		ifTrue: [ ^ false ].
	^ varDef isListVarNo: vno