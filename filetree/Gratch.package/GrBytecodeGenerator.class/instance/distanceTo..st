sensing ops
distanceTo: pno

	self appendValue: (pno argString: parser).
	self appendSymbol: #xyOf.
	self appendSymbol: #swap.
	self unaryCommand: #getVar arg: GrNodesVarDef xVarNo.
	self appendSymbol: #minus.
	self appendSymbol: #dup.
	self appendSymbol: #mul.
	self appendSymbol: #swap.
	self unaryCommand: #getVar arg: GrNodesVarDef yVarNo.
	self appendSymbol: #minus.
	self appendSymbol: #dup.
	self appendSymbol: #mul.
	self appendSymbol: #plus.
	self appendSymbol: #sqrt.
	^ nil