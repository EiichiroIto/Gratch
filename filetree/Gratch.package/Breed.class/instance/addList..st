api
addList: aString
	| id |
	id := varDef addList: aString.
	variables updateVarDef: varDef.
	^ id