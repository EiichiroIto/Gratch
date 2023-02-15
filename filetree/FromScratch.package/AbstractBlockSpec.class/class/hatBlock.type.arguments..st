instance creation
hatBlock: aString type: aString2 arguments: aCollection

	self assert: [ aString2 isString ].
	^ ScratchBlockSpec new
		  label: aString;
		  type: aString2;
		  selector: nil;
		  arguments: aCollection copy;
		  yourself