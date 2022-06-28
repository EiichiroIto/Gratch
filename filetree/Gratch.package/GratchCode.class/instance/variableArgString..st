private
variableArgString: aString
	| v |
	v := [ script varId varNoFor: aString ] on: Error do: [ nil ].
	v ifNil: [ ^ 0 ].
	^ generator getVar: v