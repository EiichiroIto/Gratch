basic ops
setN1: num

	self
		binaryCommand: #setVarTo
		arg1: GrEdgesVarDef n1VarNo
		arg2: [ num argString: parser ]