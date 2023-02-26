instance creation
startHatBlock: aString selector: aSymbol

	self assert: [ aSymbol isSymbol ].
	^ ScratchBlockSpec new
		  label: aString;
		  type: #isStartHatBlock;
		  selector: aSymbol;
		  arguments: #(  );
		  yourself