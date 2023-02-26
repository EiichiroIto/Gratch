private
updateArgs: anArray script: aScript
	anArray at: 1 put: (anArray at: 1) asSymbol.
	2 to: anArray size do: [ :each | 
		| arg |
		arg := anArray at: each.
		arg := self evaluateArg: arg script: aScript.
		anArray at: each put: arg ]