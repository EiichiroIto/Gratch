instance creation
eventHatBlock: aString selector: aSymbol eventName: aString2

	self assert: [ aSymbol isSymbol ].
	^ ScratchBlockSpec new
		  label: aString;
		  type: #isEventHatBlock;
		  selector: aSymbol;
		  arguments: { aString2 };
		  yourself