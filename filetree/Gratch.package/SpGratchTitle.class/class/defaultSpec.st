specs
defaultSpec
	^ SpBoxLayout newVertical
		add: #labelName;
		add:
			(SpBoxLayout newHorizontal
				add: #buttonClearNodes;
				add: #buttonClearEdges;
				add: #buttonSetup;
				add: #buttonStop;
				add: #buttonLoop;
				add: #buttonStep;
				add: #buttonEvent;
				add: #buttonLoopSlow;
				yourself);
		yourself