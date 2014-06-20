as yet unclassified
initializeWidgets

	ruleList := self newList.
	ruleList
		beMultipleSelection;
		displayBlock: [ :rule | rule name ];
		items: self rules.
		
	ccViz := self instantiate: CCModel.
	ccViz autoResetCamera: false.
	
	
	vizButton := self newButton. 
	vizButton
		label: 'Vizualise';
		action: [ ccViz builder: (CCBuilder for: packModel violating: self rulesByViolator) ]

    
   