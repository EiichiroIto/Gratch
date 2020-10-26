initialization
initializePresenters
	labelName := self newLabel.
	labelName label: 'new project'.
	buttonClearEdges := self newButton.
	buttonClearNodes := self newButton.
	buttonEvent := self newButton.
	buttonLoop := self newButton.
	buttonSetup := self newButton.
	buttonLoopSlow := self newButton.
	buttonStop := self newButton.
	buttonStep := self newButton.
	self setupButtons.
	self focusOrder
		add: buttonClearNodes;
		add: buttonClearEdges;
		add: buttonSetup;
		add: buttonStop;
		add: buttonLoop;
		add: buttonLoopSlow;
		add: buttonStep;
		add: buttonEvent