private
exportMenu
	^ self newMenu
		addItem: [ :item | 
			item
				name: 'Export GDF' localized;
				action: [ application exportGDF ] ];
		addItem: [ :item | 
			item
				name: 'Export S-EXP' localized;
				action: [ application exportSexpCode ] ];
		yourself