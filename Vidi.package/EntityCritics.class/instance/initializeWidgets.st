as yet unclassified
initializeWidgets
	
	itemTitle := self newLabel.
	itemTitle emphasis: 1.
	
	critList := self newList.
	critList
		displayBlock: [ :rule | rule name ];
		whenSelectedItemChanged: [ :item | item
			ifNil: [ self resetTextModel ]
			ifNotNil: [ self setTextModelForRule: item ] ].
	
	codePane := self newText.
	self initializeActionToPerformOnTextModel.
	
	browseButton := self newButton.
	browseButton
		icon: (Smalltalk ui icons iconNamed: #sourceSelectedIcon);
		action: [ entity ifNotNil: [ entity browse ] ].
   