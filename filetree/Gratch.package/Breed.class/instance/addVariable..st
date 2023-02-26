api
addVariable: aString
	| id |
	id := varDef addVariable: aString.
	variables updateVarDef: varDef.
	^ id