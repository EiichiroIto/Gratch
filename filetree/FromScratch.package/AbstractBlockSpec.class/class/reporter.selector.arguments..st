instance creation
reporter: aString selector: aSymbol arguments: aCollection

	^ ScratchBlockSpec new
		  label: aString;
		  type: #isReporterBlock;
		  selector: aSymbol;
		  arguments: aCollection copy;
		  yourself