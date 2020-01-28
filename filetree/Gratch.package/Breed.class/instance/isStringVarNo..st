testing
isStringVarNo: vno
	vno = 0
		ifTrue: [ ^ false ].
	^ varId isStringVarNo: vno