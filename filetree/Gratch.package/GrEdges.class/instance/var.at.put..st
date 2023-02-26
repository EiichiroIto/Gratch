accessing variable
var: anInteger at: id put: aNumber
	| data |
	data := aNumber.
	anInteger = varDef class n1VarNo
		ifTrue: [ data := aNumber asInteger ].
	anInteger = varDef class n2VarNo
		ifTrue: [ data := aNumber asInteger ].
	super var: anInteger at: id put: data