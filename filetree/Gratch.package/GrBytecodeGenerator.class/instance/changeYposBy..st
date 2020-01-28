basic ops
changeYposBy: aNumber
	self appendValue: GrNodesVarDef yVarNo.
	self getVar: GrNodesVarDef yVarNo.
	self appendValue: aNumber.
	self appendSymbol: #plus.
	self appendSymbol: #setVarTo.