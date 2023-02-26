arithmetic ops
negated: x

	^ self binaryCommand: #minus arg1: 0 arg2: [ x argString: parser ]