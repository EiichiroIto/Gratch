private
addLabel
	"Add a label for my command and arguments. This is the method that really creates the whole block."

	"Details: We remove all the pieces of this block, and then reassemble them, being careful not to destroy any argument morphs that we might still want to use. This is helpful if someone adds/removes parameters from a hat block."

	| tokens args nextArgIndex m next |
	commandSpec ifNil: [ ^ self ].

	"we make sure not to remove the next block."
	next := self nextBlock.
	self removeAllMorphsIn: (self submorphs reject: [ :t | t = next ]).
	tokens := self class parseCommandSpec: commandSpec.
	args := tokens select: [ :s | self class isArgSpec: s ].

	"remove any excess arg morphs from the list."
	[ argMorphs size > args size ]
		whileTrue: [ m := argMorphs last.
			argMorphs remove: m.

			"if the argument we're throwing out is anything complicated, we'd like to keep it around in the world."
			m isBlockMorph
				ifTrue: [ m openInWorld ] ].

	"create new arg morphs."
	[ argMorphs size < args size ]
		whileTrue:
			[ argMorphs addLast: (self argMorphFor: (args at: argMorphs size + 1)) ].
	nextArgIndex := 1.
	tokens
		do: [ :s | 
			(self class isArgSpec: s)
				ifTrue: [ m := argMorphs at: nextArgIndex.
					nextArgIndex := nextArgIndex + 1 ]
				ifFalse: [ m := self labelMorphFor: s ].
			self addMorphBack: m ].
	self isReporter
		ifFalse: [ ^ self ].
	submorphs first isSquareArg
		ifTrue: [ self addMorphFront: self newSpacer ].
	submorphs last isSquareArg
		ifTrue: [ self addMorphBack: self newSpacer ]