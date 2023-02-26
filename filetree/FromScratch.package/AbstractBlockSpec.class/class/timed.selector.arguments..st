instance creation
timed: aString selector: aSymbol arguments: aCollection

	^ ScratchBlockSpec new
		  label: aString;
		  type: #isTimedBlock;
		  selector: aSymbol;
		  arguments: aCollection copy;
		  yourself