initialization
connectPresenters

	buttonGraph action: [ 
		self selectButton: 'Graph'.
		self graphSelected ].
	buttonNodes action: [ 
		self selectButton: 'Nodes'.
		self nodesSelected ].
	buttonEdges action: [ 
		self selectButton: 'Edges'.
		self edgesSelected ].
	stageFrame
		zoomInAction: [ self zoomIn ];
		zoomOutAction: [ self zoomOut ];
		zoomFitAction: [ self zoomFit ];
		zoomHomeAction: [ self zoomHome ].
	inspectorPane
		whenEditDo: [ :obj | self changeValue: obj ];
		whenDeleteDo: [ self deleteObject ].
	buttonSave action: [ application saveProjectNoDialog ].
	buttonOpen action: [ application openProject ].
	buttonClearEdges action: [ application clearEdges ].
	buttonClearNodes action: [ application clearNodes ].
	buttonEvent action: [ application startEvent ].
	buttonLoop action: [ application startLoop ].
	buttonSetup action: [ application startSetup ].
	buttonLoopSlow action: [ application startLoopSlow ].
	buttonStop action: [ application stopAll ].
	buttonStep action: [ application stepLoop ]