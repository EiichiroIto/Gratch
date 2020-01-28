private
setupButtons
	toolBar
		addItem:
			(SpToolBarButton new
				label: 'ClearN';
				icon: (ScratchTheme formAt: #clearNodesButtonGray);
				help: 'Clear nodes');
		addItem:
			(SpToolBarButton new
				label: 'ClearE';
				icon: (ScratchTheme formAt: #clearEdgesButtonGray);
				help: 'Clear edges');
		addItem:
			(SpToolBarButton new
				label: 'Setup';
				icon: (ScratchTheme formAt: #setupButtonGray);
				help: 'Setup');
		addItem:
			(SpToolBarButton new
				label: 'Stop';
				icon: (ScratchTheme formAt: #stopButtonGray);
				help: 'Stop');
		addItem:
			(SpToolBarButton new
				label: 'Step';
				icon: (ScratchTheme formAt: #stepButtonGray);
				help: 'Step');
		addItem:
			(SpToolBarButton new
				label: 'Event';
				icon: (ScratchTheme formAt: #eventButtonGray);
				help: 'Event');
		addItem:
			(SpToolBarButton new
				label: 'Slowly';
				icon: (ScratchTheme formAt: #loopSlowButtonGray);
				help: 'Loop slowly');
		addItem:
			(SpToolBarButton new
				label: 'Loop';
				icon: (ScratchTheme formAt: #loopButtonGray);
				help: 'Loop')