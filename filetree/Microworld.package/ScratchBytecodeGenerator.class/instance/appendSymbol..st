code injection
appendSymbol: aSymbol
	stream nextPut: (ScratchBytecodeSymbol selector: aSymbol).