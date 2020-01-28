private
importMenu
	^ self newMenu
		addItem: [ :item | 
			item
				name: 'Import GDF';
				action: [ application importGDF ] ];
		addItem: [ :item | 
			item
				name: 'Import S-EXP';
				action: [ application importSexpCode ] ];
		yourself