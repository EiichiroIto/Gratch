private
exportNodes
	self writeNodeHeader.
	grWorld
		livingBreed: GrBreedId nodesBreedNo
		do: [ :each | 
			self writeNode: each.
			stream nextPutAll: String crlf ]