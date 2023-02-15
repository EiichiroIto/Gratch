argument menus
colorMenu
	^ ColorList colorNames collect: [ :each | Array with: each localized with: (ColorList perform: each) ]