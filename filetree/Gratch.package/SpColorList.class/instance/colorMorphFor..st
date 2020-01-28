private
colorMorphFor: aString
	| cno |
	cno := ColorList colorOf: aString asSymbol.
	^ Morph new
		extent: 20 @ 20;
		color: (ColorList colorAt: cno);
		yourself