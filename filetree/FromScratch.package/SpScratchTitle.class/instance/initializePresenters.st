initialization
initializePresenters
	labelName := self newLabel.
	labelName label: 'new project'.
	toolBar := self newToolbar.
	self setupButtons.
	self focusOrder add: toolBar