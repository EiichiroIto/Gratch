basic ops
setYpos: num
	bcGenerator
		setVar: targetMorph varId class yVarNo
		to: [ num argString: parser ]