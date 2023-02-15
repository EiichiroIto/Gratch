block specs
addBasicBlocks

	blockMorphBuilder
		addCategory: 'basic';
		addCommand: 'create %n nodes' selector: #createNodes: arguments: #( 10 );
		addSeparator;
		addCommand: 'clear nodes' selector: #clearNodes;
		addCommand: 'clear edges' selector: #clearEdges;
		addSeparator;
		addCommand: 'set random seed %n' selector: #setRandomSeed: arguments: #( 0 ).
	super addBasicBlocks