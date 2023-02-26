menu actions
showBytecode: topBlock

	| code |
	code := self newCode
		        script: presenter target;
		        yourself.
	(code parseBlock: topBlock) inspect