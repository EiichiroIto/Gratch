menu actions
quit

	(SpScratchFrame confirm: 'Quit Application?' localized) ifFalse: [ 
		^ self ].
	Smalltalk snapshot: false andQuit: true