block specs
addBasicBlocks

	blockMorphBuilder
		addCategory: 'basic';
		addSeparator;
		addCommand: 'kill %n of %m' selector: #kill:breed: arguments: #( 0 '' );
		addSeparator;
		addCommand: 'set node %n ''s %N to %n' selector: #setNode:var:to: arguments: #( 0 '' 0 );
		addCommand: 'change node %n ''s %N by %n' selector: #changeNode:var:by: arguments: #( 0 '' 0 );
		addSeparator;
		addCommand: 'set edge %n ''s %E to %n' selector: #setEdge:var:to: arguments: #( 0 '' 0 );
		addCommand: 'change edge %n ''s %E by %n' selector: #changeEdge:var:by: arguments: #( 0 '' 0 )