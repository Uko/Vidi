event-handling
handleClickOnElement: anElement

	anElement toggleSelection
		ifTrue: [
			selectedElement ifNotNilDo: #deselect.
			selectionBlock cull: anElement cull: selectedElement.
			selectedElement := anElement ]
		ifFalse: [ self deselectElement ]