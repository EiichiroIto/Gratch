arithmetic ops
mod: x by: y

	^ self
		  binaryCommand: #mod
		  arg1: [ x argString: parser ]
		  arg2: [ y argString: parser ]