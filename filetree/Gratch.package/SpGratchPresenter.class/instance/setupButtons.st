initialization
setupButtons

	buttonOpen
		icon: (ScratchTheme formAt: #openButton);
		help: 'Open Project' localized.
	buttonSave
		icon: (ScratchTheme formAt: #saveButton);
		help: 'Save Project' localized.
	buttonClearNodes
		label: 'ClearN';
		icon: (ScratchTheme formAt: #clearNodesButtonGray);
		help: 'Clear nodes' localized.
	buttonClearEdges
		label: 'ClearE';
		icon: (ScratchTheme formAt: #clearEdgesButtonGray);
		help: 'Clear edges' localized.
	buttonSetup
		label: 'Setup';
		icon: (ScratchTheme formAt: #setupButtonGray);
		help: 'Setup' localized.
	buttonStop
		label: 'Stop';
		icon: (ScratchTheme formAt: #stopButtonGray);
		help: 'Stop' localized.
	buttonStep
		label: 'Step';
		icon: (ScratchTheme formAt: #stepButtonGray);
		help: 'Step' localized.
	buttonEvent
		label: 'Event';
		icon: (ScratchTheme formAt: #eventButtonGray);
		help: 'Event' localized.
	buttonLoopSlow
		label: 'Slowly';
		icon: (ScratchTheme formAt: #loopSlowButtonGray);
		help: 'Loop slowly' localized.
	buttonLoop
		label: 'Loop';
		icon: (ScratchTheme formAt: #loopButtonGray);
		help: 'Loop' localized.
	buttonGraph label: 'Graph' localized.
	buttonNodes
		label: 'Nodes' localized;
		icon: (ScratchTheme formAt: #clearNodesButtonPressed).
	buttonEdges
		label: 'Edges' localized;
		icon: (ScratchTheme formAt: #clearEdgesButtonPressed)