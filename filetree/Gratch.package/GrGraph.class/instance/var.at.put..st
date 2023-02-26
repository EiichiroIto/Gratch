accessing variable
var: anInteger at: dummy put: anObject
	| v |
	v := varDef class.
	anInteger = v widthVarNo
		ifTrue: [ ^ self ].
	anInteger = v heightVarNo
		ifTrue: [ ^ self ].
	anInteger = v maxBreedNoVarNo
		ifTrue: [ ^ self ].
	anInteger = v ticksVarNo
		ifTrue: [ ^ grWorld ticks: anObject ].
	anInteger = v countAliveVarNo
		ifTrue: [ ^ self ].
	anInteger = v sizeVarNo
		ifTrue: [ ^ self ].
	anInteger = v maxVarVarNo
		ifTrue: [ ^ self ].
	super var: anInteger at: dummy put: anObject