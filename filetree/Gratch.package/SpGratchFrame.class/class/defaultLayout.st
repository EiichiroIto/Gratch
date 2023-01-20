layout
defaultLayout

	^ SpBoxLayout newVertical
		  add: (SpBoxLayout newHorizontal
				   spacing: 4;
				   add: #logo withConstraints: [ :c | c width: 160 ];
				   add: #buttonOpen
				   withConstraints: [ :c | c width: self iconWidth ];
				   add: #buttonSave
				   withConstraints: [ :c | c width: self iconWidth ];
				   add: #menu;
				   yourself)
		  withConstraints: [ :c | c height: self toolbarHeight ];
		  add: (SpBoxLayout newHorizontal
				   spacing: 4;
				   add: #viewerPane
				   withConstraints: [ :c | c width: self viewerPaneWidth ];
				   add: (SpPanedLayout newHorizontal
						    positionOfSlider: 40 percent;
						    add: (SpPanedLayout newVertical
								     positionOfSlider: 20 percent;
								     add: #inspectorPane;
								     add: #editorPane;
								     yourself);
						    add: (SpBoxLayout newVertical
								     add: (SpBoxLayout newHorizontal
										      add: #modifiedProjectLabel
										      withConstraints: [ :c | c expand: false ];
										      add: #projectNameLabel;
										      yourself)
								     withConstraints: [ :c | c expand: false ];
								     add: (SpBoxLayout newHorizontal
										      add: #buttonClearNodes;
										      add: #buttonClearEdges;
										      add: #buttonSetup;
										      add: #buttonStop;
										      add: #buttonLoop;
										      add: #buttonStep;
										      add: #buttonEvent;
										      add: #buttonLoopSlow;
										      yourself)
								     withConstraints: [ :c | c expand: false ];
								     add: #stageFrame;
								     add: (SpBoxLayout newHorizontal
										      add: #buttonGraph;
										      add: #buttonNodes;
										      add: #buttonEdges;
										      yourself)
								     withConstraints: [ :c | c height: self libraryPaneHeight ];
								     yourself);
						    yourself);
				   yourself);
		  yourself