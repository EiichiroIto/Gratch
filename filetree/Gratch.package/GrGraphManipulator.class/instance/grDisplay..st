accessing
grDisplay: anObject
	grDisplay := anObject.
	grDisplay ifNotNil: [ grDisplay grManipulator: self ]