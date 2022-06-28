menu building
helpMenu

	^ self newMenu
		  addItem: [ :item | 
			  item
				  name: 'About ' , application appName;
				  action: [ owner window showAbout ] ];
		  addItem: [ :item | 
			  item
				  name: 'Restart';
				  action: [ stageFrame startStepping ] ];
		  addItem: [ :item | 
			  item
				  name: 'Inspect';
				  enabled: [ application class hideDebugMenu not ];
				  action: [ application inspect ] ];
		  addItem: [ :item | 
			  item
				  name: 'Settings';
				  enabled: [ application class hideDebugMenu not ];
				  subMenu: self settingsMenu ];
		  yourself