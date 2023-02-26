instance creation
booleanReporter: aString selector: aSymbol arguments: aCollection

	^ ScratchBlockSpec new
		  label: aString;
		  type: #isBooleanReporter;
		  selector: aSymbol;
		  arguments: aCollection copy;
		  yourself