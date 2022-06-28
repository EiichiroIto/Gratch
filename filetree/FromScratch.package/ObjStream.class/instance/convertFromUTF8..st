private
convertFromUTF8: aByteArray
	^ ZnUTF8Encoder default decodeBytes: aByteArray