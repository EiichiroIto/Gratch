private
chooseNewFileNativeDefault: filename extension: ext title: aString type: aSymbol
	| dialog d fName |
	dialog := SpFileChooserDialog new.
	dialog
		extension: ext;
		filename: filename;
		title: aString;
		type: aSymbol.
	d := dialog openModalWithSpec: #chooseNewFileSpec.
	d isCancelled
		ifTrue: [ ^ nil ].
	fName := dialog filename withExtension: ext.
	fName isFile
		ifTrue: [ (UIManager default
				confirm: 'Overwrite existing file: ' localized , fName basename , '?')
				ifFalse: [ ^ nil ].
			fName delete ].
	^ fName