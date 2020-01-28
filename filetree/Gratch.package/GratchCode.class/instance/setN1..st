basic ops
setN1: num
	bcGenerator
		setVar: targetMorph varId class n1VarNo
		to: [ num argString: parser ]