menu building
settingsMenu

	| m |
	m := self newMenu.
	m addGroup: [ :grp | 
		self application settingKeys do: [ :key | 
			grp addItem: [ :item | 
				item
					name: key , ' = ' , (application settingAt: key) asString;
					action: [ 
						application selectSetting: key.
						self updateWindowSettings.
						item name: key , ' = ' , (application settingAt: key) asString ] ] ] ].
	m addGroup: [ :grp | 
		grp addItem: [ :item | 
			item
				name: 'Save settings' localized;
				action: [ application saveSettings ] ] ].
	^ m