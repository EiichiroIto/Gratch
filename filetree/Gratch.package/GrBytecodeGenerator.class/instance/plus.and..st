arithmetic ops
plus: x and: y

	^ self
		  binaryCommand: #plus
		  arg1: [ x argString: parser ]
		  arg2: [ y argString: parser ]