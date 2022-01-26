private
helpMenu
	^ self newMenu
		addItem: [ :item | 
			item
				name: ('About ' , application appName) localized;
				action: [ owner window showAbout ] ];
		addItem: [ :item | 
			item
				name: 'Restart' localized;
				action: [ stageFrame display startStepping ] ];
		addItem: [ :item | 
			item
				name: 'Inspect' localized;
				action: [ application inspect ] ];
		addItem: [ :item | 
			item
				name: 'Settings' localized;
				subMenu: self settingsMenu ];
		yourself