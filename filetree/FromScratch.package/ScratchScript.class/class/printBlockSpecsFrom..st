utilities
printBlockSpecsFrom: aCollection

	"ScratchScript printBlockSpecsFrom: ScratchScript new blocks."

	aCollection do: [ :each | 
		each isString ifTrue: [ 
			(each = '-'
				 ifTrue: [ 'addSeparator;' ]
				 ifFalse: [ 'addCategory: ''' , each , ''';' ]) traceCr ].
		each isArray ifTrue: [ 
			(each second
				 caseOf: { 
						 ([ #- ] -> [ 
						  'addCommand: ''' , each first , ''' selector: #' , each third
						  , ' arguments: ' , (each copyFrom: 4 to: each size) asString
						  , ';' ]).
						 ([ #r ] -> [ 
						  'addReporter: ''' , each first , ''' selector: #' , each third
						  , ' arguments: ' , (each copyFrom: 4 to: each size) asString
						  , ';' ]).
						 ([ #b ] -> [ 
						  'addBooleanReporter: ''' , each first , ''' selector: #'
						  , each third , ' arguments: '
						  , (each copyFrom: 4 to: each size) asString , ';' ]).
						 ([ #c ] -> [ 
						  'addCBlock: ''' , each first , ''' selector: #' , each third
						  , ' arguments: ' , (each copyFrom: 4 to: each size) asString
						  , ';' ]).
						 ([ #L ] -> [ 
						  'addHatBlock: ''' , each first , ''' type: #' , each second
						  , ' arguments: ' , (each copyFrom: 3 to: each size) asString
						  , ';' ]).
						 ([ #E ] -> [ 
						  'addHatBlock: ''' , each first , ''' type: #' , each second
						  , ' arguments: ' , (each copyFrom: 3 to: each size) asString
						  , ';' ]).
						 ([ #S ] -> [ 
						  'addHatBlock: ''' , each first , ''' type: #' , each second
						  , ' arguments: ' , (each copyFrom: 3 to: each size) asString
						  , ';' ]).
						 ([ #T ] -> [ 
						  'addHatBlock: ''' , each first , ''' type: #' , each second
						  , ' arguments: ' , (each copyFrom: 3 to: each size) asString
						  , ';' ]) }
				 otherwise: [ each ]) traceCr ] ]