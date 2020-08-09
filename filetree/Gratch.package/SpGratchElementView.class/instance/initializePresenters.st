initialization
initializePresenters
	tableVars := self newTable.
	labelVars := self newLabel.
	buttonRefresh := self newButton.
	buttonDelete := self newButton.
	tableVars
		activateOnDoubleClick;
		addColumn:
			(SpStringTableColumn
				title: 'Name' localized
				evaluated: [ :o | self getNameOf: o ]);
		addColumn:
			(SpStringTableColumn
				title: 'Value' localized
				evaluated: [ :o | self getValueOf: o ]).
	labelVars label: 'Variables' localized.
	buttonRefresh
		label: 'Refresh' localized;
		icon: (self iconNamed: #refresh).
	buttonDelete
		label: 'Delete' localized;
		icon: (self iconNamed: #delete).
	self focusOrder
		add: tableVars;
		add: buttonRefresh;
		add: buttonDelete