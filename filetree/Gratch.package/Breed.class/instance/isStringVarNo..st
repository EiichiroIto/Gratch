testing
isStringVarNo: vno
	vno = 0
		ifTrue: [ ^ false ].
	^ varDef isStringVarNo: vno