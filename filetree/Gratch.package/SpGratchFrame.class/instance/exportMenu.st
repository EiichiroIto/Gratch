private
exportMenu
	^ self newMenu
		addItem: [ :item | 
			item
				name: 'Export GDF';
				action: [ application exportGDF ] ];
		addItem: [ :item | 
			item
				name: 'Export S-EXP';
				action: [ application exportSexpCode ] ];
		yourself