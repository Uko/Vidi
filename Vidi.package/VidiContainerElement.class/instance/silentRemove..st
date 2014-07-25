as yet unclassified
silentRemove: anElement
	
	self view ifNotNilDo: [ :v |
		v remove: anElement ].
	descendents remove: anElement.
	anElement parent: nil.