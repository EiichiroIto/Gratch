accessing variable
var: anInteger at: id put: aNumber
	| data |
	data := aNumber.
	anInteger = varId class n1VarNo
		ifTrue: [ data := aNumber asInteger ].
	anInteger = varId class n2VarNo
		ifTrue: [ data := aNumber asInteger ].
	super var: anInteger at: id put: data