arithmetic ops
equal: x to: y

	^ self
		  binaryCommand: #equal
		  arg1: [ x argString: parser ]
		  arg2: [ y argString: parser ]