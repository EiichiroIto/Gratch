block specs
addBasicBlocks

	blockMorphBuilder
		addCategory: 'basic';
		addCommand: 'set node1 to %n' selector: #setN1: arguments: #( 0 );
		addCommand: 'set node2 to %n' selector: #setN2: arguments: #( 0 );
		addCommand: 'die' selector: #die;
		addSeparator.
	super addBasicBlocks