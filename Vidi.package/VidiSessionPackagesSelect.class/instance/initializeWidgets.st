initialization
initializeWidgets
	| displayBlock |

	displayBlock := [ :package |
		package packageName,
		' (', package classes size asString, 'c ',
		package methods size asStringWithCommas, 'm)' ].

	super initializeWidgets.	
	self instantiateModels: #(
		toSelectModel ListModel
		selectedModel ListModel).
	toSelectModel beMultipleSelection.
	toSelectModel displayBlock: displayBlock.
	selectedModel beMultipleSelection.
	selectedModel displayBlock: displayBlock.
	
	self focusOrder removeAll add: toSelectModel