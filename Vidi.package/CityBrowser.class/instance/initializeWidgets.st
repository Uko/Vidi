initialization
initializeWidgets
		
	roViz := self instantiate: Roassal3DModel.
	roViz view: (VidiR3View new
		hoverOnElementBlock: [ :el |
			"infoBar text: el model infoText" ];
		stopHoverOnElementBlock: [
			self resetInfobar ];
		yourself).
		
	totalInfo := self newLabel.
	errorsInfo := self newLabel.
	infoBar := self newLabel.