initialization
initializeWidgets
	
	itemTitle := self newLabel.
	itemTitle emphasis: 1.
	
	critList := self newTree.
	self initializeCritList.
			
	codePane := self newText.
	self initializeActionToPerformOnTextModel.
	
	browseButton := self newButton.
	browseButton
		icon: (Smalltalk ui icons iconNamed: #historyIcon);
		action: [ entity ifNotNil: [ entity mirroredEntity browse ] ].
		
	critics := self newLabel.
	critics text: 'Violated rules:'.
	sourceCode := self newLabel.
	sourceCode text: 'Source code:'