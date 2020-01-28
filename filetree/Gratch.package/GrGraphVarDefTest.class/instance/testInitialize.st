tests
testInitialize
	| o |
	o := GrGraphVarDef new.
	self assert: o size equals: 7.
	self assert: (o varNoFor: 'width') equals: GrGraphVarDef widthVarNo.
	self assert: (o varNoFor: 'height') equals: GrGraphVarDef heightVarNo.
	self assert: (o varNoFor: 'maxBreedNo') equals: GrGraphVarDef maxBreedNoVarNo.
	self assert: (o varNoFor: 'ticks') equals: GrGraphVarDef ticksVarNo.
	self assert: (o varNoFor: 'countAlive') equals: GrGraphVarDef countAliveVarNo.
	self assert: (o varNoFor: 'size') equals: GrGraphVarDef sizeVarNo.
	self assert: (o varNoFor: 'maxVar') equals: GrGraphVarDef maxVarVarNo.