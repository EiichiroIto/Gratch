accessing variable
flag: anInteger at: id
	| vars v b |
	vars := variables varAt: varDef class flagVarNo.
	b := 1 << anInteger.
	v := vars at: id.
	^ (v bitAnd: b) > 0