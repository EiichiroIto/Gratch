arithmetic ops
minus: x with: y

	^ self
		  binaryCommand: #minus
		  arg1: [ x argString: parser ]
		  arg2: [ y argString: parser ]