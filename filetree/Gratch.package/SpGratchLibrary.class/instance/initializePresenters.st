initialization
initializePresenters
	buttonGraph := self newButton.
	buttonNodes := self newButton.
	buttonEdges := self newButton.
	buttonGraph label: 'Graph'.
	buttonNodes
		label: 'Nodes';
		icon: (ScratchTheme formAt: #clearNodesButtonPressed).
	buttonEdges
		label: 'Edges';
		icon: (ScratchTheme formAt: #clearEdgesButtonPressed).
	self selectButton: 'Graph'.
	self focusOrder
		add: buttonGraph;
		add: buttonNodes;
		add: buttonEdges