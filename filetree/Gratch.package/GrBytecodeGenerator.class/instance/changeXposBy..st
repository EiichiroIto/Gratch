basic ops
changeXposBy: aNumber

	self appendValue: GrNodesVarDef xVarNo.
	self unaryCommand: #getVar arg: GrNodesVarDef xVarNo.
	self appendValue: [ aNumber argString: parser ].
	self appendSymbol: #plus.
	self appendSymbol: #setVarTo