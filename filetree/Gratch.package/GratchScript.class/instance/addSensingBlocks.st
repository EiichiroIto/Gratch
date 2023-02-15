block specs
addSensingBlocks

	blockMorphBuilder
		addCategory: 'sensing';
		addReporter: 'degrees of %n' selector: #degreesOf: arguments: #( 0 );
		addReporter: 'distance from %n to %n' selector: #distanceFrom:to: arguments: #( 0 0 );
		addReporter: 'direction from %n to %n' selector: #directionFrom:to: arguments: #( 0 0 );
		addSeparator;
		addReporter: 'graph''s %G' selector: #getGraphVar: arguments: #( '' );
		addBooleanReporter: 'graph is connected' selector: #graphIsConnected;
		addSeparator;
		addReporter: 'ticks' selector: #ticks;
		addReporter: 'returned value' selector: #returnValue