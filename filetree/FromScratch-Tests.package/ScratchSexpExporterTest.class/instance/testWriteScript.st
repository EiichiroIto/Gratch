test
testWriteScript
	| ex sc |
	sc := self newScript.
	sc objName: 'test'.
	ex := self newExporter.
	ex privStream: '' writeStream.
	ex writeScript: sc.
	self
		assert: ex stream contents
		equals:
			'(for test ((var "a") (var "b c") (list "d") (list "e f"))' , String lf
				, '   ())'