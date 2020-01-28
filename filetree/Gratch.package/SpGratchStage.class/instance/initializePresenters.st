initialization
initializePresenters
	display := self newMorph.
	buttonZoomIn := self newButton.
	buttonZoomOut := self newButton.
	buttonZoomFit := self newButton.
	buttonZoomHome := self newButton.
	display morph: GrDisplay new.
	buttonZoomIn icon: (ScratchTheme formAt: #zoomIn).
	buttonZoomOut icon: (ScratchTheme formAt: #zoomOut).
	buttonZoomFit icon: (ScratchTheme formAt: #zoomFit).
	buttonZoomHome icon: (ScratchTheme formAt: #zoomHome).
	self focusOrder
		add: buttonZoomHome;
		add: buttonZoomIn;
		add: buttonZoomFit;
		add: buttonZoomOut