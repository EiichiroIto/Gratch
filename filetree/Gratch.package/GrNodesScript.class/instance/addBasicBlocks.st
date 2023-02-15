adding
addBasicBlocks

	blockMorphBuilder
		addCategory: 'basic';
		addCommand: 'create edge to %n' selector: #createEdgeTo: arguments: #( 0 );
		addCommand: 'die' selector: #die;
		addSeparator;
		addCommand: 'set x to %n' selector: #setXpos: arguments: #( 0 );
		addCommand: 'change x by %n' selector: #changeXposBy: arguments: #( 1 );
		addSeparator;
		addCommand: 'set y to %n' selector: #setYpos: arguments: #( 0 );
		addCommand: 'change y by %n' selector: #changeYposBy: arguments: #( 1 ).
	super addBasicBlocks