instance creation
newProjectReadWriter

	^ ScratchProjectReadWriter new
		  objStream: self newObjStream;
		  fileVersion: self class fileVersion;
		  fileVersionTag: self class fileVersionTag;
		  yourself