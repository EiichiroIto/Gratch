testing
isListVarNo: vno
	vno = 0
		ifTrue: [ ^ false ].
	^ varId isListVarNo: vno