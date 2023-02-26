api
setupWorld: aGrWorld

	scripts isEmpty ifTrue: [ self setupScripts ].
	scripts do: [ :each | aGrWorld addBreed: each breed ]