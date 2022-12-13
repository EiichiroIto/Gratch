menu building
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
		addItem: [ :item | 
			item
				name: 'Export Script image' localized;
				action: [ application exportScriptImage ] ];
		addItem: [ :item | 
			item
				name: 'Export Graph image' localized;
				action: [ application exportGraphImage ] ];
		yourself