utilities
request: aString initialAnswer: aString2

	^ SpRequestDialog new
		  title: 'Information request' localized;
		  label: aString;
		  text: aString2;
			acceptLabel: 'OK' localized;
			cancelLabel: 'Cancel' localized;
		  openModal