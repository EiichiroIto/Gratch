private
importWorld: aCollection
	aCollection first = appName
		ifFalse: [ self error ].
	aCollection second do: [ :each | project assureExistsScriptNamed: each ].
	self importScripts: aCollection third