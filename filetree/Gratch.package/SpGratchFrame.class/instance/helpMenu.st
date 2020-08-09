private
helpMenu
	^ self newMenu
		addItem: [ :item | 
			item
				name: ('About ' , application appName) localized;
				action: [ owner window showAbout ] ];
		addItem: [ :item | 
			item
				name: 'Settings' localized;
				subMenu: self settingsMenu ];
		yourself