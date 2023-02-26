basic ops
kill: tno breed: bno

	self
		binaryCommand: #kill
		arg1: [ bno argString: parser ]
		arg2: [ tno argString: parser ]