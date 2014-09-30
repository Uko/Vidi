adding
silentAdd: anElement
	anElement parent: self.
	descendents add: anElement.
	self view ifNotNilDo: [ :v |
		v add: anElement ]