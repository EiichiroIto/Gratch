microworld
var: anInteger at: id
	| v |
	v := varId class.
	anInteger = v widthVarNo
		ifTrue: [ ^ grWorld extent x ].
	anInteger = v heightVarNo
		ifTrue: [ ^ grWorld extent y ].
	anInteger = v maxBreedNoVarNo
		ifTrue: [ ^ grWorld maxBreedNo ].
	anInteger = v ticksVarNo
		ifTrue: [ ^ ticks ].
	anInteger = v countAliveVarNo
		ifTrue: [ ^ grWorld countAliveOf: id ].
	anInteger = v sizeVarNo
		ifTrue: [ ^ grWorld sizeOf: id ].
	anInteger = v maxVarVarNo
		ifTrue: [ ^ varId size ].
	^ super var: anInteger at: id