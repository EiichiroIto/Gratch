argument menus
colorMenu
	^ ColorList colorNames collect: [ :each | Array with: each with: (ColorList perform: each) ]