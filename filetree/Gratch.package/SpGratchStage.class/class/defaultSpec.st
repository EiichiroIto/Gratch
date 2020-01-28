specs
defaultSpec
	^ SpBoxLayout newHorizontal
		add: #display;
		add:
			(SpBoxLayout newVertical
				add: #buttonZoomHome;
				add: #buttonZoomIn;
				add: #buttonZoomFit;
				add: #buttonZoomOut;
				yourself)
			withConstraints: [ :c | c width: 40 ];
		yourself