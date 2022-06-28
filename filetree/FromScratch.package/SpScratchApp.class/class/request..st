utilities
request: aString

	^ SpRequestDialog new
		  title: 'Information request' localized;
		  label: aString;
		  openModal