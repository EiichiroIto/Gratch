initialization
initializePresenters
	tableColors := self newTable.
	tableColors
		activateOnDoubleClick;
		addColumn:
			((SpImageTableColumn evaluated: [ :item | self colorMorphFor: item ])
				width: 30;
				yourself);
		addColumn:
			(SpStringTableColumn
				title: 'Name'
				evaluated: [ :o | self colorNameFor: o ]);
		items: ColorList colorNames