arithmetic ops
more: x than: y

	^ self
		  binaryCommand: #less
		  arg1: [ y argString: parser ]
		  arg2: [ x argString: parser ]