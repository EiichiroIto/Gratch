menu actions
showBytecode: topBlock
	| code |
	code := self newCode parse: topBlock target: presenter target.
	code inspect