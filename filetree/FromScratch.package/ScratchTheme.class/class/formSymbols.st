utilities
formSymbols

	"ScratchTheme formSymbols inspect"

	| result nodes symbols |
	result := Set new.
	#formAt: senders do: [ :each | 
		nodes := each sendNodes select: [ :each2 | 
			           each2 selector = #formAt: "and: [ 
				           each2 arguments first isLiteralNode ]" ].
		symbols := nodes collect: [ :each2 | each2 arguments first value ].
		result addAll: symbols ].
	^ result