arithmetic ops
less: x than: y

	^ self
		  binaryCommand: #less
		  arg1: [ x argString: parser ]
		  arg2: [ y argString: parser ]