color ops
setColor: color

	self
		binaryCommand: #setVarTo
		arg1: GrGraphVarDef colorVarNo
		arg2: [ color argString: parser ]