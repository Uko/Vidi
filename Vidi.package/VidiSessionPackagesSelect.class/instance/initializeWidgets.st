as yet unclassified
initializeWidgets

	super initializeWidgets.	
	self instantiateModels: #(
		toSelectModel ListModel
		selectedModel ListModel).
	selectedModel beMultipleSelection.
	toSelectModel beMultipleSelection.
	toSelectModel displayBlock: [ :package |
		package packageName ].
	selectedModel displayBlock: [ :package |
		package packageName ]