block specs
addControlBlocks

	blockMorphBuilder
		addCategory: 'control';
		addStartHatBlock: 'when loop' selector: #loop;
		addEventHatBlock: 'when I receive' selector: #event: eventName: '';
		addSeparator;
		addCBlock: 'repeat %n' selector: #doRepeat arguments: #( 10 );
		addSeparator;
		addCBlock: 'if %b' selector: #doIf arguments: #( '' );
		addCBlock: 'if %b' selector: #doIfElse arguments: #( '' );
		addCBlock: 'repeat until %b' selector: #doUntil arguments: #( '' );
		addSeparator;
		addCommand: 'broadcast %e' selector: #broadcast:;
		addCommand: 'call %S' selector: #callSub: arguments: #( '' );
		addCommand: 'return %n' selector: #return: arguments: #( 0 );
		addSeparator;
		addCommand: 'stop script' selector: #stopThread;
		addCommand: 'stop all' selector: #stopAll