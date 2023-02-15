block specs
addSensingBlocks

	blockMorphBuilder
		addCategory: 'sensing';
		addReporter: 'id' selector: #getId;
		addReporter: 'node1' selector: #getN1;
		addReporter: 'node2' selector: #getN2;
		addSeparator;
		addReporter: 'distance' selector: #distance;
		addReporter: 'direction' selector: #direction;
		addSeparator.
	super addSensingBlocks