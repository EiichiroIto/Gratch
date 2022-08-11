utilities
request: aString

	^ SpRequestDialog new
		  title: 'Information request' localized;
		  label: aString;
			acceptLabel: 'OK' localized;
			cancelLabel: 'Cancel' localized;
		  openModal