accessing
copyVar: var to: var2
	| v v2 |
	v := self varAt: var.
	v2 := self varAt: var2.
	v2 setArray: v array