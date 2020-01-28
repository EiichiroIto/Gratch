microworld
var: anInteger at: dummy put: anObject
	| v |
	v := varId class.
	anInteger = v widthVarNo
		ifTrue: [ ^ self ].
	anInteger = v heightVarNo
		ifTrue: [ ^ self ].
	anInteger = v maxBreedNoVarNo
		ifTrue: [ ^ self ].
	anInteger = v ticksVarNo
		ifTrue: [ ^ ticks := anObject ].
	anInteger = v countAliveVarNo
		ifTrue: [ ^ self ].
	anInteger = v sizeVarNo
		ifTrue: [ ^ self ].
	anInteger = v maxVarVarNo
		ifTrue: [ ^ self ].
	super var: anInteger at: dummy put: anObject