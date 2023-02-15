test
testEvaluateWithArgs

	| b |
	b := self newBlock
		     receiver: self newTestScript;
		     yourself.
	b commandSpec: 'abs %n'.
	b selector: #abs:.
	self assert: (b evaluateWithArgs: #( -5 )) equals: 5.
	b commandSpec: 'plus %n and %n'.
	b selector: #plus:and:.
	self assert: (b evaluateWithArgs: #( 1 2 )) equals: 3.
	b commandSpec: '%s = %s'.
	b selector: #equal:to:.
	self assert: (b evaluateWithArgs: #( true true )).
	self assert: (b evaluateWithArgs: #( 1 1 )).
	self assert: (b evaluateWithArgs: #( 'a' 'a' )).
	b commandSpec: '%n < %n'.
	b selector: #less:than:.
	self assert: (b evaluateWithArgs: #( 1 2 )).
	self deny: (b evaluateWithArgs: #( 1 1 )).
	self assert: (b evaluateWithArgs: #( '3' '12' )).
	self deny: (b evaluateWithArgs: #( '12' '12' )).
	b commandSpec: '%s < %s'.
	self assert: (b evaluateWithArgs: #( 'a' 'b' )).
	self deny: (b evaluateWithArgs: #( 'a' 'a' ))