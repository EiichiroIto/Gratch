utilities
select: aString chooseFrom: aCollection

	^ SpSelectDialog new
		  title: aString;
		  items: aCollection;
		  openModal