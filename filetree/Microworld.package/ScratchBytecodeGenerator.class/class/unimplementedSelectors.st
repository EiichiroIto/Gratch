utilities
unimplementedSelectors

	"ScratchBytecodeGenerator unimplementedSelectors"

	^ SpScratchApp allBlockSymbols
	  \ (self subclasses first methods collect: #selector)