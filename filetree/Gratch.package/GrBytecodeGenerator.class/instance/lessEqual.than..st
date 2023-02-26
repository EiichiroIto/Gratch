arithmetic ops
lessEqual: x than: y

	^ self
		  binaryCommand: #lessEqual
		  arg1: [ x argString: parser ]
		  arg2: [ y argString: parser ]