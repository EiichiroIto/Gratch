sensing ops
ticks

	self appendValue: 1.
	self appendValue: GrGraphVarDef ticksVarNo.
	self appendValue: GrBreedId graphBreedNo.
	self appendSymbol: #getBreedVar.
	^ nil