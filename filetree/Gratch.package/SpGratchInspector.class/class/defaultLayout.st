layout
defaultLayout
	^ SpBoxLayout newVertical
		spacing: 4;
		add: #tableVars;
		add:
			(SpBoxLayout newHorizontal
				spacing: 4;
				add: #buttonEdit;
				add: #buttonDelete;
				yourself)
			withConstraints: [ :c | c expand: false ];
		yourself