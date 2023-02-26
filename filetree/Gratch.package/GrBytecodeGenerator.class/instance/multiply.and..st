arithmetic ops
multiply: x and: y

	^ self
		  binaryCommand: #mul
		  arg1: [ x argString: parser ]
		  arg2: [ y argString: parser ]