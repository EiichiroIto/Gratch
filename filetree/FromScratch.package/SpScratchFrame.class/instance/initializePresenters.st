initialization
initializePresenters

	logo := self newLogo.
	menu := self newMenuBar.
	viewerPane := self newViewer.
	editorPane := self newEditor.
	projectNameLabel := self newLabel.
	stageFrame := self newStage.
	modifiedProjectLabel := self newLabel.
	self setupMenu