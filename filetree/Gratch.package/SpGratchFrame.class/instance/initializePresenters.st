initialization
initializePresenters
	logo := self newImage.
	buttonSave := self newButton.
	buttonOpen := self newButton.
	menu := self newMenuBar.
	viewerPane := self instantiate: SpGratchViewer.
	editorPane := self instantiate: SpScratchEditor.
	titlePane := self instantiate: SpGratchTitle.
	stageFrame := self instantiate: SpGratchStage.
	libraryPane := self instantiate: SpGratchLibrary.
	self setupTopPane.
	self setupTitlePane.
	self focusOrder
		add: editorPane