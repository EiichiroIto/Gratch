accessing variable
var: anInteger at: id put: aNumber
	| data |
	data := aNumber.
	anInteger = varDef class colorVarNo
		ifTrue: [ data := ColorList default normalize: data.
			defaultColor := data ].
	super var: anInteger at: id put: data