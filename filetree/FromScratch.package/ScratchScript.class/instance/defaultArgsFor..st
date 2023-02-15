block building
defaultArgsFor: blockSpec

	| defaultArgs |
	defaultArgs := blockSpec arguments copy.
	(#( broadcast: doBroadcastAndWait ) includes: blockSpec selector) 
		ifTrue: [ defaultArgs := Array with: project defaultEventName ].
	^ defaultArgs