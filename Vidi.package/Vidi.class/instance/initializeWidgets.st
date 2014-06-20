as yet unclassified
initializeWidgets

	ruleCategories := self newList.
	ruleCategories
		beMultipleSelection;
		displayBlock: [ :rule | rule name ];
		autoDeselect: false;
		items: self rules.
		
	roassal := self instantiate: CCModel.
	
	
	vizButton := self newButton. 
	vizButton
		label: 'Vizualise';
		action: [ roassal builder: (CCBuilder for: packModel violating: self rulesByViolator) ]

    
   