basic ops
changeXposBy: aNumber
	self appendValue: GrNodesVarDef xVarNo.
	self getVar: GrNodesVarDef xVarNo.
	self appendValue: aNumber.
	self appendSymbol: #plus.
	self appendSymbol: #setVarTo.