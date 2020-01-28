initialization
connectPresenters
	buttonSave action: [ application saveProjectNoDialog ].
	buttonOpen action: [ application openProject ].
	libraryPane
		graphAction: [ self graphSelected ];
		nodesAction: [ self nodesSelected ];
		edgesAction: [ self edgesSelected ].
	stageFrame
		zoomInAction: [ self zoomIn ];
		zoomOutAction: [ self zoomOut ];
		zoomFitAction: [ self zoomFit ];
		zoomHomeAction: [ self zoomHome ]