api
extractProjectFrom: aByteArray

	| s version project |
	s := ReadStream on: aByteArray.
	version := self extractFileVersionOn: s.
	version = fileVersion ifFalse: [ 
		^ self error: 'Invalid file version!' localized ].
	s skip: s uint32.
	project := objStream readObjFrom: s showProgress: true.
	s close.
	project isProject ifFalse: [ 
		^ self error:
			  'Invalid project format:' localized , project class asString ].
	project scripts do: [ :m | 
		m
			setupBlockSpecs;
			convertStacksToTuples;
			convertTuplesToStacks;
			project: project ].
	^ project