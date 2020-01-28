initialization
reset
	"reset means clear all variable with its definitions"

	varId := VarDef new
		setupVarNames;
		yourself.
	variables := Variables new updateVarDef: varId