arithmetic ops
lessEqual: x than: y

	^ generator
		  lessEqual: [ x argString: parser ]
		  than: [ y argString: parser ]