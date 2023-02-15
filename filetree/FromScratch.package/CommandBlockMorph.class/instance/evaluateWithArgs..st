evaluation
evaluateWithArgs: rawArgs

	"Evalue this block with the given argument list."

	| args |
	args := self coerceArgs: rawArgs.
	^ receiver evaluateFunction: selector withArgs: args