*FromScratch
initializeWindow: aWindowPresenter

	aWindowPresenter
		title: self title;
		initialExtent: self extent;
		whenOpenedDo: [ 
			textInput
				takeKeyboardFocus;
				selectAll ]