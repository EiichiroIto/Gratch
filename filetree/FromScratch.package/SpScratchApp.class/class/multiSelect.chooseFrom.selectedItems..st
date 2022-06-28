utilities
multiSelect: aString chooseFrom: aCollection selectedItems: aCollection2

	^ SpMultiSelectDialog new
		  title: 'Multiple Select' localized;
		  label: aString;
		  items: aCollection;
		  selectedItems: aCollection2;
		  display: [ :each | each ];
		  openModal