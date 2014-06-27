initialization
initializeWidgets

	ruleList := self newList.
	ruleList
		beMultipleSelection;
		autoDeselect: false;
		whenSelectionChanged: [ 
			rulesByViolator := nil.
			maxViolations := nil ];
		displayBlock: [ :rule | rule name ];
		items: self rules.
		
	roViz := self instantiate: Roassal3DModel.
	
	infoBar := self newLabel.
	self resetInfobar.
	
	itemTitle := self newLabel.
	itemTitle emphasis: 1.
	
	critList := self newList.
	critList displayBlock: [ :rule | rule name ].
	
	codePane := self newText.
	
	browseButton := self newButton.
	browseButton icon: (Smalltalk ui icons iconNamed: #sourceSelectedIcon).
   