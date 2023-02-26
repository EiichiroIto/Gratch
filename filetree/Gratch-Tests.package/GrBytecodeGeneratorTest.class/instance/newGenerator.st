private
newGenerator

	^ GrBytecodeGenerator new
		  parser: ScratchBlockParser new;
		  yourself