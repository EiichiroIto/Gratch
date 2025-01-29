*FromScratch
initializeWindow: aWindowPresenter

	super initializeWindow: aWindowPresenter.
	aWindowPresenter whenOpenedDo: [ 
		textInput
			takeKeyboardFocus;
			selectAll ]