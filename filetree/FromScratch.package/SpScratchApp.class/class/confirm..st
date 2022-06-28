utilities
confirm: aString

	^ SpConfirmDialog new
		  title: 'Important confirmation' localized;
		  label: aString;
		  openModal