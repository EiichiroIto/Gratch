api
clearBreed: bno
	self livingBreed: bno do: [ :each | self kill: each breed: bno ]