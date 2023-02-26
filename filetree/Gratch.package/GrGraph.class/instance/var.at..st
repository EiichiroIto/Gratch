accessing variable
var: anInteger at: id
	| v |
	v := varDef class.
	anInteger = v widthVarNo
		ifTrue: [ ^ grWorld extent x ].
	anInteger = v heightVarNo
		ifTrue: [ ^ grWorld extent y ].
	anInteger = v maxBreedNoVarNo
		ifTrue: [ ^ grWorld maxBreedNo ].
	anInteger = v ticksVarNo
		ifTrue: [ ^ grWorld ticks ].
	anInteger = v countAliveVarNo
		ifTrue: [ ^ grWorld countAliveOf: id ].
	anInteger = v sizeVarNo
		ifTrue: [ ^ grWorld sizeOf: id ].
	anInteger = v maxVarVarNo
		ifTrue: [ ^ varDef size ].
	^ super var: anInteger at: id