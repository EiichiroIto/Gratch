private
setVarTupleFrom: aCollection script: aScript
	| arg |
	arg := aCollection third.
	arg := self evaluateArg: arg script: aScript.
	^ {#changeVariable.
	aCollection second.
	aCollection first asSymbol.
	arg}