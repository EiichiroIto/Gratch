menu building
settingsMenu

	| m |
	m := self newMenu.
	m addGroup: [ :grp | 
		self application class settingKeys do: [ :key | 
			grp addItem: [ :item | 
				item
					name:
						key , ' = '
						, (self application class settingValueFor: key) asString;
					action: [ 
						self selectSetting: key.
						item name:
								key , ' = '
								, (self application class settingValueFor: key) asString ] ] ] ].
	m addGroup: [ :grp | 
		grp addItem: [ :item | 
			item
				name: 'Save settings' localized;
				action: [ self application class saveSettings ] ] ].
	^ m