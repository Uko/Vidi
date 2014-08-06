as yet unclassified
initialize
	super initialize.
	
	deselectionBlock :=
	hoverOnElementBlock :=
	deselectionBlock :=
	stopHoverOnElementBlock := [  ].
	
	self
		on: R3MouseClickDown
		do: [ self deselectElement ]