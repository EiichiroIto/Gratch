argument menus
addArgBuilder
	super addArgBuilder.
	argBuilder
		addNumberExpressArg: $c
			selector: #colorMenu
			target: nil
			initialExpression: '15';
		addChoiceArg: $E selector: #edgesVarNames;
		addChoiceArg: $G selector: #graphVarNames;
		addChoiceArg: $N selector: #nodesVarNames