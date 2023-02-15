blocks
defaultArgsFor: blockSpec

	| selector breeds args lists |
	selector := blockSpec selector.
	args := blockSpec arguments copy.
	breeds := self project scriptsForMenu.
	(#( #kill:breed: ) includes: selector) ifTrue: [ 
		^ args
			  at: 2 put: breeds first;
			  yourself ].
	lists := self listVarNames.
	lists notEmpty ifTrue: [ 
		(#( clearList: lineCountOfList: #list:contains: ) includes: selector) 
			ifTrue: [ 
				^ args
					  at: 1 put: lists first;
					  yourself ].
		(#( #append:toList: #deleteLine:ofList: #getLine:ofList:
		    #setLine:ofList:to: ) includes: selector) ifTrue: [ 
			^ args
				  at: 2 put: lists first;
				  yourself ] ].
	^ super defaultArgsFor: blockSpec