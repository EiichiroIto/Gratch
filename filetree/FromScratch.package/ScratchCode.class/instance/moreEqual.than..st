arithmetic ops
moreEqual: x than: y

	^ generator
		  lessEqual: [ y argString: parser ]
		  than: [ x argString: parser ]