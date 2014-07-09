initialization
initializeWidgets
		
	roViz := self instantiate: Roassal3DModel.
	
	infoBar := self newLabel.
	self resetInfobar.