test
testArgPermutationForSpecWithTranslation

	| r |
	r := CommandBlockMorph
		     argPermutationForSpec: '%a of %m of %m of %t'
		     withTranslation: '%a de %m de %m de %t'.
	self assertCollection: r equals: #( 1 2 3 4 ).
	r := CommandBlockMorph
		     argPermutationForSpec: '%a of %m of %m of %t'
		     withTranslation: '%t de %m2 de %m1 de %a'.
	self assertCollection: r equals: #( 4 3 2 1 ).
	self
		should: [ 
			CommandBlockMorph
				argPermutationForSpec: 'abc %n'
				withTranslation: 'abc %s' ]
		raise: Error.
	self
		should: [ 
			CommandBlockMorph
				argPermutationForSpec: 'abc %n'
				withTranslation: 'abc n' ]
		raise: Error