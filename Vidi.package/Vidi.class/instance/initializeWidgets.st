initialization
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
		action: [ self setNewBuilder ]

    
   