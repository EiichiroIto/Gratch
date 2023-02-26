arithmetic ops
is: x between: from and: to

	self
		binaryCommand: #lessEqual
		arg1: [ from argString: parser ]
		arg2: [ x argString: parser ].
	self
		binaryCommand: #lessEqual
		arg1: [ x argString: parser ]
		arg2: [ to argString: parser ].
	self appendSymbol: #and.
	^ nil