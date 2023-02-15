block specs
addEdgesBlocks

	blockMorphBuilder
		addCategory: 'edges';
		addReporter: 'edge %n ''s %E' selector: #getEdge:var: arguments: #( 0 '' );
		addReporter: '# of edges' selector: #numberOfEdges;
		addSeparator;
		addReporter: '%D of edges'' %E' selector: #compute:edges: arguments: #( 'sum' )