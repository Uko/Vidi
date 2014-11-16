initialization
initializeWidgets
		
	roViz := self instantiate: Roassal3DModel.
	roViz view: VidiR3View new.
		
	totalInfo := self newLabel.
	errorsInfo := self newLabel.
	infoBar := self newLabel.