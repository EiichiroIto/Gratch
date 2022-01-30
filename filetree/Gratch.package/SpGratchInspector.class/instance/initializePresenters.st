initialization
initializePresenters
	tableVars := self newTable.
	buttonEdit := self newButton.
	buttonDelete := self newButton.
	tableVars
		activateOnDoubleClick;
		addColumn:
			(SpStringTableColumn
				title: 'Name' localized
				evaluated: [ :o | o first asString ]);
		addColumn:
			(SpStringTableColumn
				title: 'Value' localized
				evaluated: [ :o | o second asString ]).
	buttonEdit
		label: 'Edit' localized;
		icon: (self iconNamed: #edit).
	buttonDelete
		label: 'Delete' localized;
		icon: (self iconNamed: #delete).
	self focusOrder
		add: tableVars;
		add: buttonEdit;
		add: buttonDelete