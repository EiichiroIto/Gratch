private
importMenu
	^ self newMenu
		addItem: [ :item | 
			item
				name: 'Import GDF' localized;
				action: [ application importGDF ] ];
		addItem: [ :item | 
			item
				name: 'Import S-EXP' localized;
				action: [ application importSexpCode ] ];
		yourself