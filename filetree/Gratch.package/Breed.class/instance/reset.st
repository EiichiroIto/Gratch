initialization
reset
	"reset means clear all variable with its definitions"

	varDef := VarDef new
		setupVarNames;
		yourself.
	variables := Variables new updateVarDef: varDef