initialization
initialize
	super initialize.
	parser := ScratchBlockParser new generator: self.
	stream := WriteStream on: String new.
	indents := Array with: 0.
	indentLevel := 1.
	position := 0.
	wantsLinefeed := false