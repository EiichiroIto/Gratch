block specs
addNodesBlocks

	blockMorphBuilder
		addCategory: 'nodes';
		addReporter: 'node %n ''s %N' selector: #getNode:var: arguments: #( 0 '' );
		addReporter: '# of nodes' selector: #numberOfNodes;
		addSeparator;
		addReporter: '%C of nodes'' %N' selector: #compute:nodes: arguments: #( 'sum' );
		addReporter: 'nearest from %n' selector: #nearestNodeFrom: arguments: #( 0 );
		addReporter: 'within %n from %n' selector: #within:from: arguments: #( 10 0 )