examples
exampleModal

	| selections |
	selections := self new
		              title: 'Select modal example';
		              label: 'Select classes';
		              items: Smalltalk allClassesAndTraits;
		              selectedItems: Set new;
		              display: [ :each | each name ];
		              openModal.

	selections ifNotNil: [ self inform: selections asString ]