examples
example

	self new
		title: 'Select example';
		label: 'Select classes';
		items: Smalltalk allClassesAndTraits;
		selectedItems: Set new;
		display: [ :each | each name ];
		onAccept: [ :dialog | self inform: dialog presenter selectedItems asString ];
		openDialog