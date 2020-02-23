basic ops
setYpos: num
	generator
		setVar: script varId class yVarNo
		to: [ num argString: parser ]