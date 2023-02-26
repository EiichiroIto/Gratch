instance creation
newCode
	^ GrBytecodeGenerator new
		parser: ScratchBlockParser new;
		yourself