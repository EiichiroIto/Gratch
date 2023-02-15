argument menus
addArgBuilder

	argMorphBuilder
		addBooleanArg: $b;
		addEventTitleArg: $e;
		addChoiceArg: $f
		options:
			#( 'abs' 'sqrt' 'sin' 'cos' 'tan' 'asin' 'acos' 'atan' 'ln' 'log'
			   'e ^' '10 ^' )
		initialChoice: 'sqrt';
		addLocalVarArg: $l;
		addChoiceArg: $L selector: #listVarNames;
		addSpriteArg: $m;
		addNumberExpressArg: $n initialExpression: '10';
		addChoiceArg: $S selector: #subNames;
		addStringExpressArg: $s;
		addChoiceArg: $v selector: #varNames;
		addNumberExpressArg: $c selector: #colorMenu target: nil initialExpression: '15';
		addChoiceArg: $C options: #( 'sum' 'average' 'min' 'max' 'id with smallest'
			   'id with largest' )
		initialChoice: '';
		addChoiceArg: $D options: #( 'sum' 'average' 'min' 'max' 'id with smallest'
			   'id with largest' )
		initialChoice: '';
		addChoiceArg: $E selector: #edgesVarNames;
		addChoiceArg: $G selector: #graphVarNames;
		addChoiceArg: $N selector: #nodesVarNames