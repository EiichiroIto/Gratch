initialization
initializePresenters
	buttonGraph := self newButton.
	buttonNodes := self newButton.
	buttonEdges := self newButton.
	buttonGraph label: 'Graph' localized.
	buttonNodes
		label: 'Nodes' localized;
		icon: (ScratchTheme formAt: #clearNodesButtonPressed).
	buttonEdges
		label: 'Edges' localized;
		icon: (ScratchTheme formAt: #clearEdgesButtonPressed).
	self selectButton: 'Graph'.
	self focusOrder
		add: buttonGraph;
		add: buttonNodes;
		add: buttonEdges