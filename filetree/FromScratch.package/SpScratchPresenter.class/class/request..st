utilities
request: aString

	^ self newRequest
		  title: 'Information request' localized;
		  label: aString;
		  openModal