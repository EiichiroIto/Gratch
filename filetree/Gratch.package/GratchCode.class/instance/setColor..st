color ops
setColor: color
	generator
		setVar: script varId class colorVarNo
		to: [ color argString: parser ]