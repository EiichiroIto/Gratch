private
export: anExporter extension: aString isBinary: aBoolean

	| str |
	str := self class
		       try: [ anExporter exportFrom: self isBinary: aBoolean ]
		       onFailure: [ :err | 
			       presenter alert:
				       'Could not generate code: ' localized , err asString ].
	self exportString: str extension: aString isBinary: aBoolean