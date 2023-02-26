api
fixVars
	varDef fixVars.
	variables ifNotNil: [ variables fixVars: varDef ].