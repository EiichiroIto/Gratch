private
helpMenu
	^ self newMenu
		addItem: [ :item | 
			item
				name: 'About ' , application appName;
				action: [ owner window showAbout ] ];
		yourself