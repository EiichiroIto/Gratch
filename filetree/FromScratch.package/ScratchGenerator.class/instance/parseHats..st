api
parseHats: aCollection

	| code |
	aCollection do: [ :each | each parseUsing: parser ].
	code := self code.
	^ self header , code