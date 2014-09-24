action
deselectElement
	selectedElement ifNotNil: [ 
		selectedElement deselect.
		deselectionBlock cull: selectedElement.
		selectedElement := nil ]