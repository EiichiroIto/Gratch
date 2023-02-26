block building
subHatBlockFor: aString

	^ SubHatMorph new
		  receiver: script;
		  selector: #sub:;
		  subName: aString;
		  yourself