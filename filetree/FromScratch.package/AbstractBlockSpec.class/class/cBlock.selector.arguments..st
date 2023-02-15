instance creation
cBlock: aString selector: aSymbol arguments: aCollection

	^ ScratchBlockSpec new
		  label: aString;
		  type: #c;
		  selector: aSymbol;
		  arguments: aCollection copy;
		  yourself