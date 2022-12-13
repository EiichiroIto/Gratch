layout
defaultLayout

	^ SpBoxLayout newVertical
		  add: #labelName withConstraints: [ :c | c expand: false ];
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
		  withConstraints: [ :c | c height: self buttonHeight + 10 ];
		  yourself