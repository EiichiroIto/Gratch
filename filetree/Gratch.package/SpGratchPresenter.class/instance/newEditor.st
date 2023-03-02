instance creation
newEditor

	^ self newMorph
		  morph: (ScrollFrameMorph new
				   growthFraction: 0.1;
				   color: ScratchTheme scriptsPaneColor);
		  yourself