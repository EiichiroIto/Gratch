utilities
confirm: aString

	^ SpConfirmDialog new
		  title: 'Important confirmation' localized;
		  label: aString;
			acceptLabel: 'OK' localized;
			cancelLabel: 'Cancel' localized;
		  openModal