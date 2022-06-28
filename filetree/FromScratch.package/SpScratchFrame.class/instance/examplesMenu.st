menu building
examplesMenu
	| m |
	m := self newMenu.
	application exampleFiles
		do: [ :each | 
			m
				addItem: [ :item | 
					item
						name: each basename;
						action: [ application loadExample: each ] ] ].
	^ m