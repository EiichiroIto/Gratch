initialization
connectPresenters
	categories
		display: [ :each | each asString localized ];
		displayIcon: [ :each | self markerFormFor: each ];
		whenSelectionChangedDo: [ :each | self updateContents ]