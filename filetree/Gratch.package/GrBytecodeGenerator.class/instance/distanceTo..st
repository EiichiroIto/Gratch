sensing ops
distanceTo: pno
	self appendValue: pno.
	self appendSymbol: #xyOf.
	self appendSymbol: #swap.
	self getVar: GrNodesVarDef xVarNo.
	self appendSymbol: #minus.
	self appendSymbol: #dup.
	self appendSymbol: #mul.
	self appendSymbol: #swap.
	self getVar: GrNodesVarDef yVarNo.
	self appendSymbol: #minus.
	self appendSymbol: #dup.
	self appendSymbol: #mul.
	self appendSymbol: #plus.
	self appendSymbol: #sqrt.
	^ nil