argument menus
addArgBuilder

	super addArgBuilder.
	argBuilder
		addNumberExpressArg: $c
		selector: #colorMenu
		target: nil
		initialExpression: '15';
		addChoiceArg: $C
		options:
			#( 'sum' 'average' 'min' 'max' 'id with smallest'
			   'id with largest' )
		initialChoice: '';
		addChoiceArg: $D
		options:
			#( 'sum' 'average' 'min' 'max' 'id with smallest'
			   'id with largest' )
		initialChoice: '';
		addChoiceArg: $E selector: #edgesVarNames;
		addChoiceArg: $G selector: #graphVarNames;
		addChoiceArg: $N selector: #nodesVarNames