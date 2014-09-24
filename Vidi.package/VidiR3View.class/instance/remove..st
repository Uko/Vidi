action
remove: anElement
	selectedElement = anElement ifTrue: [ 
		self deselectElement ].
	super remove: anElement
	