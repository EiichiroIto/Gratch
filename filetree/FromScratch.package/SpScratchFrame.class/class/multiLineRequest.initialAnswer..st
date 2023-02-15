utilities
multiLineRequest: aString initialAnswer: aString2

	^ SpRequestTextDialog new
		  title: 'Information request' localized;
		  label: aString;
		  text: aString2;
		  acceptLabel: 'OK' localized;
		  cancelLabel: 'Cancel' localized;
		  extent: self currentWorld extent // 2;
		  openModal