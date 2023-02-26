code generator
generateDoIfElseCenter: aMorph

	| orgId newId |
	orgId := aMorph labelId.
	newId := self doIfElse: orgId.
	aMorph labelId: newId