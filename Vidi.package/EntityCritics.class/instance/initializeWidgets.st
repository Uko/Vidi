initialization
initializeWidgets
	
	itemTitle := self newLabel.
	itemTitle emphasis: 1.
	
	critList := self newTree.
	critList
		displayBlock: [ :report | report title ];
		whenSelectedItemChanged: [ :item | item
			ifNil: [ self resetTextModel ]
			ifNotNil: [ self setTextModelForRule: item ] ];
		allowMenuOnNoItem: true;
		menu: [ :menu | menu
			addGroup: [:aGroup |
				self initializeEditingGroup: aGroup ];
			addGroup: [:aGroup |
				self  initializeFixingGroup: aGroup ] ].
			
	codePane := self newText.
	self initializeActionToPerformOnTextModel.
	
	browseButton := self newButton.
	browseButton
		icon: (Smalltalk ui icons iconNamed: #sourceSelectedIcon);
		action: [ entity ifNotNil: [ entity mirroredEntity browse ] ].
		
	critics := self newLabel.
	critics text: 'Violated rules:'.
	sourceCode := self newLabel.
	sourceCode text: 'Source code:'