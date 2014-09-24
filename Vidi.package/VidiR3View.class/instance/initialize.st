initialize-release
initialize
	super initialize.
	
	deselectionBlock :=
	hoverOnElementBlock :=
	deselectionBlock :=
	stopHoverOnElementBlock := [  ].
	self background: Smalltalk ui theme backgroundColor.
	
	self
		on: R3MouseClickDown
		do: [ self deselectElement ]