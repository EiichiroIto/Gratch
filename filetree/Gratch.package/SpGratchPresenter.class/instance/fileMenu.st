menu building
fileMenu

	| m |
	m := self newMenu.
	m
		addItem: [ :item | 
			item
				name: 'New' localized;
				action: [ application newProject ] ];
		addItem: [ :item | 
			item
				name: 'Open' localized;
				action: [ application openProject ] ].
	application examplesDirectory isDirectory ifTrue: [ 
		m addItem: [ :item | 
			item
				name: 'Examples' localized;
				subMenu: self examplesMenu ] ].
	m addGroup: [ :grp | 
		grp
			addItem: [ :item | 
				item
					name: 'Project Notes' localized;
					action: [ application editNotes ] ];
			addItem: [ :item | 
				item
					name: 'Save' localized;
					action: [ application saveProjectNoDialog ] ];
			addItem: [ :item | 
				item
					name: 'Save As' localized;
					action: [ application saveProject ] ] ].
	m addGroup: [ :grp | 
		grp
			addItem: [ :item | 
				item
					name: 'Import ...' localized;
					subMenu: self importMenu ];
			addItem: [ :item | 
				item
					name: 'Export ...' localized;
					subMenu: self exportMenu ] ].
	m addGroup: [ :grp | 
		grp
			addItem: [ :item | 
				item
					name: 'Close' localized;
					action: [ application closeAllWindows ];
					enabled: [ self settings dontClose not ] ];
			addItem: [ :item | 
				item
					name: 'Quit' localized;
					action: [ application class quit ] ] ].
	^ m