control ops
broadcast: msg

	| eno |
	eno := msg argString: parser.
	eno ifNil: [ ^ self ].
	self unaryCommand: #broadcast arg: eno