utilities
select: aString chooseFrom: aCollection

	^ SpSelectDialog new
		  title: aString;
		  items: aCollection;
			acceptLabel: 'OK' localized;
			cancelLabel: 'Cancel' localized;
		  openModal