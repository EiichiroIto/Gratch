layout
defaultLayout

	^ SpBoxLayout newTopToBottom
		borderWidth: 5;
		spacing: 5;
		add: #label expand: false;
		add: #table;
		yourself