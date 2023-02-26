arithmetic ops
and: x with: y

	^ self
		  binaryCommand: #and
		  arg1: [ x argString: parser ]
		  arg2: [ y argString: parser ]