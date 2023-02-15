block specs
addListBlocks

	blockMorphBuilder
		addCategory: 'list';
		addCommand: 'add %n to %L' selector: #append:toList: arguments: #( 10 'list' );
		addCommand: 'delete %n of %L' selector: #deleteLine:ofList: arguments: #( 1 'list' );
		addCommand: 'replace item %n of %L with %n' selector: #setLine:ofList:to: arguments: #( 1 'list' 10 );
		addCommand: 'clear list %L' selector: #clearList: arguments: #( 'list' );
		addSeparator;
		addReporter: 'item %n of %L' selector: #getLine:ofList: arguments: #( 1 'list' );
		addReporter: 'length of %L' selector: #lineCountOfList: arguments: #( 'list' );
		addBooleanReporter: '%L contains %n' selector: #list:contains: arguments: #( 'list' 10 );
		addSeparator;
		addCommand: 'set all nodes to %L' selector: #setAllNodesTo: arguments: #( 'list' );
		addCommand: 'set all edges to %L' selector: #setAllEdgesTo: arguments: #( 'list' );
		addCommand: 'adjacent nodes to %n into %L' selector: #adjacentNodesTo:into: arguments: #( 0 'list' )