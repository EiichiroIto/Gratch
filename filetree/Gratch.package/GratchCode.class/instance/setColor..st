color ops
setColor: color
	bcGenerator
		setVar: targetMorph varId class colorVarNo
		to: [ color argString: parser ]