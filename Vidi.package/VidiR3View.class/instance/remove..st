as yet unclassified
remove: anElement
	selectedElement = anElement ifTrue: [ 
		self deselectElement ].
	super remove: anElement
	