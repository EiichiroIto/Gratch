basic ops
setXpos: num
	bcGenerator
		setVar: targetMorph varId class xVarNo
		to: [ num argString: parser ]