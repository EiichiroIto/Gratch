block specs
addCommonColorBlocks

	blockMorphBuilder
		addCategory: 'color';
		addCommand: 'set color %c of node %n' selector: #setColor:node: arguments: #( 15 0 );
		addCommand: 'set color %c of edge %n' selector: #setColor:edge: arguments: #( 15 0 );
		addReporter: 'color of node %n' selector: #getColorOfNode: arguments: #( 0 );
		addReporter: 'color of edge %n' selector: #setColorOfEdge: arguments: #( 0 );
		addSeparator