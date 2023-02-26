menu actions
quit

	(SpScratchPresenter confirm: 'Quit Application?' localized) ifFalse: [ 
		^ self ].
	Smalltalk snapshot: false andQuit: true