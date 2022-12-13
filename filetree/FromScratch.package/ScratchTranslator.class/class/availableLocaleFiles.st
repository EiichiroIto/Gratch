accessing
availableLocaleFiles

	| fr |
	fr := 'locale' asFileReference.
	fr isDirectory ifFalse: [ ^ #(  ) ].
	^ fr filesMatching: '*.po'