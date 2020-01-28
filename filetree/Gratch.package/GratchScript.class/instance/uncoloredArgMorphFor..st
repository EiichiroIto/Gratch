argument menus
uncoloredArgMorphFor: specString
	| code |
	code := specString at: 2.
	$c = code
		ifTrue: [ ^ ExpressionArgMorphWithMenu new
				numExpression: '15';
				menuSelector: #colorMenu ].
	$d = code
		ifTrue: [ ^ ExpressionArgMorphWithMenu new
				numExpression: '0';
				menuSelector: #directionMenu ].
	$E = code
		ifTrue: [ ^ ChoiceArgMorph new
				getOptionsSelector: #edgesVarNames;
				choice: '' ].
	$G = code
		ifTrue: [ ^ ChoiceArgMorph new
				getOptionsSelector: #graphVarNames;
				choice: '' ].
	$k = code
		ifTrue: [ ^ ChoiceArgMorph new
				getOptionsSelector: #keyNames;
				choice: 'space' ].
	$N = code
		ifTrue: [ ^ ChoiceArgMorph new
				getOptionsSelector: #nodesVarNames;
				choice: '' ].
	^ super uncoloredArgMorphFor: specString