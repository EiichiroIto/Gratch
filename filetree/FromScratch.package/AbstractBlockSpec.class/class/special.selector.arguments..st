instance creation
special: aString selector: aSymbol arguments: aCollection

	^ ScratchBlockSpec new
		  label: aString;
		  type: #isSpecialForm;
		  selector: aSymbol;
		  arguments: aCollection copy;
		  yourself