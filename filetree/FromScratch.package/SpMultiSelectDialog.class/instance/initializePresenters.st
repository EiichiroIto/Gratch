initialization
initializePresenters

	label := self newLabel.
	table := self newTable.

	table
		addColumn: ((SpCheckBoxTableColumn
				  title: ' '
				  evaluated: [ :obj | selectedItems includes: obj ])
				 onActivation: [ :obj | selectedItems add: obj ];
				 onDeactivation: [ :obj | selectedItems remove: obj ];
				 width: 20;
				 yourself);
		addColumn: (SpStringTableColumn title: 'Name');
		beResizable