initialization
initializeWidgets

	super initializeWidgets.	
	self instantiateModels: #(
		toSelectModel ListModel
		selectedModel ListModel).
	toSelectModel beMultipleSelection.
	toSelectModel displayBlock: [ :package |
		package packageName ].
	selectedModel beMultipleSelection.
	selectedModel displayBlock: [ :package |
		package packageName ].
	
	self focusOrder removeAll add: toSelectModel