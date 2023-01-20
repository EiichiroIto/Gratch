initialization
initializePresenters

	super initializePresenters.
	inspectorPane := self newInspector.
	buttonOpen := self newButton.
	buttonSave := self newButton.
	buttonClearEdges := self newButton.
	buttonClearNodes := self newButton.
	buttonEvent := self newButton.
	buttonLoop := self newButton.
	buttonSetup := self newButton.
	buttonLoopSlow := self newButton.
	buttonStop := self newButton.
	buttonStep := self newButton.
	buttonGraph := self newButton.
	buttonNodes := self newButton.
	buttonEdges := self newButton.
	self setupButtons.
	self selectButton: 'Graph'.
	self focusOrder add: editorPane