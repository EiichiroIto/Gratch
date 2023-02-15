block specs
addColorBlocks

	blockMorphBuilder
		addCategory: 'color';
		addReporter: 'color' selector: #getColor;
		addCommand: 'set color to %c' selector: #setColor: arguments: #( 15 );
		addCommand: 'scale %v color %c from %n to %n' selector: #scaleValue:color:from:to: arguments: #( '' 15 0 100 );
		addSeparator