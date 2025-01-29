utilities
request: aString initialAnswer: aString2

	^ self newRequest
		  title: 'Information request' localized;
		  label: aString;
		  text: aString2;
		  openModal