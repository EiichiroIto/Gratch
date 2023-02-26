sensing ops
directionTo: pno

	self appendValue: (pno argString: parser).
	self appendSymbol: #xyOf.
	self appendSymbol: #swap.
	self unaryCommand: #getVar arg: GrNodesVarDef xVarNo.
	self appendSymbol: #minus.
	self appendSymbol: #swap.
	self unaryCommand: #getVar arg: GrNodesVarDef yVarNo.
	self appendSymbol: #minus.
	self appendSymbol: #direction.
	^ nil