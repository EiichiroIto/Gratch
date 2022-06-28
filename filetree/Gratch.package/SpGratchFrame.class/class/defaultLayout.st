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
								     add: #titlePane
								     withConstraints: [ :c | c height: self titleButtonHeight ];
								     add: #stageFrame;
								     add: #libraryPane
								     withConstraints: [ :c | c height: self libraryPaneHeight ];
								     yourself);
						    yourself);
				   yourself);
		  yourself