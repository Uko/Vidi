as yet unclassified
add: anElement
	super add: anElement.
	anElement
		on: R3MouseClickDown
		do: [ self handleClickOnElement: anElement ];
		
		on: R3MouseEnter
		do: [ hoverOnElementBlock cull: anElement ];
		
		on: R3MouseLeave
		do: [ stopHoverOnElementBlock cull: anElement ]