basic ops
setYpos: num

	self
		binaryCommand: #setVarTo
		arg1: GrNodesVarDef yVarNo
		arg2: [ num argString: parser ]