utilities
multiLineRequest: aString initialAnswer: aString2

	^ SpRequestTextDialog new
		  title: 'Information request' localized;
		  label: aString;
		  text: aString2;
		  openModal