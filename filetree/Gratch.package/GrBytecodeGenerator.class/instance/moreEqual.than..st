arithmetic ops
moreEqual: x than: y

	^ self
		  binaryCommand: #lessEqual
		  arg1: [ y argString: parser ]
		  arg2: [ x argString: parser ]