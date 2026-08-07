utilities
multiSelect: aString chooseFrom: aCollection selectedItems: aCollection2

	| dialog selection |
	dialog := SpSelectMultipleDialog new.
	dialog selectedItems addAll: aCollection2.
	selection := dialog
		             title: 'Multiple Select' localized;
		             message: aString;
		             items: aCollection;
		             display: [ :each | each ];
		             acceptLabel: 'OK' localized;
		             cancelLabel: 'Cancel' localized;
		             openModal.
	selection ifNil: [ ^ nil ].
	^ selection copy