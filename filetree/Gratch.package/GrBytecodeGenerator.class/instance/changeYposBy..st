basic ops
changeYposBy: aNumber

	self appendValue: GrNodesVarDef yVarNo.
	self unaryCommand: #getVar arg: GrNodesVarDef yVarNo.
	self appendValue: [ aNumber argString: parser ].
	self appendSymbol: #plus.
	self appendSymbol: #setVarTo