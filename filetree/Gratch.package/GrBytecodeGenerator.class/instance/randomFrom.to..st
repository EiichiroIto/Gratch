arithmetic ops
randomFrom: x to: y

	^ self
		  binaryCommand: #randomFromTo
		  arg1: [ x argString: parser ]
		  arg2: [ y argString: parser ]