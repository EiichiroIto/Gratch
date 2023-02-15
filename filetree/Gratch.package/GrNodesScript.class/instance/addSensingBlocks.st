adding
addSensingBlocks

	blockMorphBuilder
		addCategory: 'sensing';
		addReporter: 'id' selector: #getId;
		addReporter: 'name' selector: #getName;
		addReporter: 'x position' selector: #getXpos;
		addReporter: 'y position' selector: #getYpos;
		addReporter: 'degrees' selector: #degrees;
		addSeparator;
		addReporter: 'distance to %n' selector: #distanceTo: arguments: #( 0 );
		addReporter: 'direction to %n' selector: #directionTo: arguments: #( 0 ).
	super addSensingBlocks