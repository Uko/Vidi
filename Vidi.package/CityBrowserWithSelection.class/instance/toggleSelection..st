selecting
toggleSelection: anElement

	selected
		ifNil: [ self select: anElement ]
		ifNotNil: [ 
			selected key = anElement
				ifTrue: [ self resetSelection ]
				ifFalse: [ self select: anElement ] ]