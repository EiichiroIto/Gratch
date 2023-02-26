basic ops
setXpos: num

	self
		binaryCommand: #setVarTo
		arg1: GrNodesVarDef xVarNo
		arg2: [ num argString: parser ]