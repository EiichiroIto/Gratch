instance creation
command: aString selector: aSymbol arguments: aCollection

	^ ScratchBlockSpec new
		  label: aString;
		  type: #isCommandBlock;
		  selector: aSymbol;
		  arguments: aCollection copy;
		  yourself