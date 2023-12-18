test
testClassName
	| l |
	l := LazyArray basicNew.
	self assert: l className isNil.
	l className: #Float32Array.
	self assert: l className equals: #Float32Array