sensing ops
directionTo: pno
	self appendValue: pno.
	self appendSymbol: #xyOf.
	self appendSymbol: #swap.
	self getVar: GrNodesVarDef xVarNo.
	self appendSymbol: #minus.
	self appendSymbol: #swap.
	self getVar: GrNodesVarDef yVarNo.
	self appendSymbol: #minus.
	self appendSymbol: #direction.
	^ nil