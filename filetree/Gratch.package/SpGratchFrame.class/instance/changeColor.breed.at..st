inspecting
changeColor: vno breed: bno at: id

	| selection cno |
	selection := SpSelectDialog new
		             title: 'Color selection' localized;
		             label: 'Select a color' localized;
		             acceptLabel: 'OK' localized;
		             cancelLabel: 'Cancel' localized;
		             items: ColorList colorNames;
		             display: [ :each | each localized ];
		             displayIcon: [ :each | 
			             Morph new
				             extent: 20 @ 20;
				             color:
					             (ColorList default colorAt:
							              (ColorList colorOf: each asSymbol));
				             yourself ];
		             openModal.
	selection ifNil: [ ^ self ].
	cno := ColorList colorOf: selection.
	self grWorld
		var: vno
		breed: bno
		at: id
		put: cno