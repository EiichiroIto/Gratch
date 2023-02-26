variable ops
setVar: var to: num

	| v |
	v := var choice.
	v isEmpty ifTrue: [ self error ].
	self
		binaryCommand: #setVarTo
		arg1: (script varNoFor: v)
		arg2: [ num argString: parser ]