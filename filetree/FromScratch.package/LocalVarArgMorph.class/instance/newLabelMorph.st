private
newLabelMorph
	^ StringFieldMorph new
		font: ScratchTranslator argFont;
		color: Color transparent;
		isNumeric: false;
		contents: ''