private
storeProjectInfo: aDictionary on: aBinaryStream

	| s |
	s := WriteStream on: (ByteArray new: 100000).
	objStream storeObj: aDictionary on: s.
	aBinaryStream uint32: s size.
	aBinaryStream nextPutAll: s contents