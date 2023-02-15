instance creation
reporter: aString selector: aSymbol arguments: aCollection

	^ ScratchBlockSpec new
		  label: aString;
		  type: #r;
		  selector: aSymbol;
		  arguments: aCollection copy;
		  yourself