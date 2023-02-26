block specs
addColorBlocks

	blockMorphBuilder
		addCategory: 'color';
		addReporter: 'color' selector: #getColor;
		addCommand: 'set color to %c' selector: #setColor: arguments: #( 15 );
		addSeparator