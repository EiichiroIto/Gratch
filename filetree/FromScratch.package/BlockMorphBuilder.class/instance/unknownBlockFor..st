api
unknownBlockFor: aSymbol

	^ CommandBlockMorph new
		  argPermutation: #( 1 );
		  color: Color red;
		  selector: #unknown:;
		  receiver: script;
		  commandSpec: 'unknown %s' localized;
		  defaultArgs: { aSymbol };
		  yourself