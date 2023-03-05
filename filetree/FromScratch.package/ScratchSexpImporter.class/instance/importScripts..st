private
importScripts: aCollection
	| script |
	aCollection
		do: [ :each | 
			each first = 'for'
				ifTrue: [ script := project scriptNamed: each second.
					each third do: [ :v | self importVarOrList: v to: script ].
					self importScripts: each fourth for: script ] ]