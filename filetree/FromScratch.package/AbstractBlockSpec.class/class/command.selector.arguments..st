instance creation
command: aString selector: aSymbol arguments: aCollection

	^ ScratchBlockSpec new
		  label: aString;
		  type: #-;
		  selector: aSymbol;
		  arguments: aCollection copy;
		  yourself