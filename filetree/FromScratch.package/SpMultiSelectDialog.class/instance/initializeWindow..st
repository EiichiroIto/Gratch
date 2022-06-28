initialization
initializeWindow: aWindowPresenter

	aWindowPresenter
		title: self title;
		initialExtent: self extent;
		whenOpenedDo: [ table takeKeyboardFocus ]