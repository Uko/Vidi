initialization
initializeWidgets
		
	roViz := self instantiate: Roassal3DModel.
	roViz view: (VidiR3View new
		hoverOnElementBlock: [ :el |
			infoBar text: el model infoText ];
		stopHoverOnElementBlock: [
			self resetInfobar ]).
		
	
	infoBar := self newLabel.
	self resetInfobar.