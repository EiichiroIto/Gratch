initialization
connectPresenters
	buttonBasic action: [ self currentCategory: #basic ].
	buttonNodes action: [ self currentCategory: #nodes ].
	buttonEdges action: [ self currentCategory: #edges ].
	buttonControl action: [ self currentCategory: #control ].
	buttonColor action: [ self currentCategory: #color ].
	buttonOperators action: [ self currentCategory: #operators ].
	buttonVariables action: [ self currentCategory: #variables ].
	buttonSensing action: [ self currentCategory: #sensing ]