accessing graph
computeStatusOf: anInteger
	anInteger = GrCommandId isConnectedCommandNo
		ifTrue: [ ^ self graphIsConnected ].
	^ true