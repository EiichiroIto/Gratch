utilities
select: aString chooseFrom: aCollection

	^ SpSelectDialog new
		  title: aString;
		  items: aCollection;
			display: [ :each | each localized ];
			acceptLabel: 'OK' localized;
			cancelLabel: 'Cancel' localized;
		  openModal