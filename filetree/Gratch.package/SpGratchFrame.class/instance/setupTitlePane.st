initialization
setupTitlePane
	titlePane
		projectName: 'New Project';
		clearNodesAction: [ application clearNodes ];
		clearEdgesAction: [ application clearEdges ];
		startSetupAction: [ application startSetup ];
		stopAllAction: [ application stopAll ];
		stepLoopAction: [ application stepLoop ];
		startLoopSlowAction: [ application startLoopSlow ];
		startLoopAction: [ application startLoop ];
		startEventAction: [ application startEvent ]