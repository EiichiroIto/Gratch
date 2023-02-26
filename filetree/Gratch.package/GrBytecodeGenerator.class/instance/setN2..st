basic ops
setN2: num

	self
		binaryCommand: #setVarTo
		arg1: GrEdgesVarDef n2VarNo
		arg2: [ num argString: parser ]