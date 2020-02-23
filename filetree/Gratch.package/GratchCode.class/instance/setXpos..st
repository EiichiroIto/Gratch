basic ops
setXpos: num
	generator
		setVar: script varId class xVarNo
		to: [ num argString: parser ]