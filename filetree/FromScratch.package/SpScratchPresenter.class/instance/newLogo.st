initialization
newLogo

	^ self newImage
		  image: (ScratchTheme formAt: #logo);
		  yourself