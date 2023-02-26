arithmetic ops
or: x with: y

	^ self
		  binaryCommand: #or
		  arg1: [ x argString: parser ]
		  arg2: [ y argString: parser ]