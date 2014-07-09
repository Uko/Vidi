as yet unclassified
initializeRefreshButton

	refreshButton
		label: 'Refresh';
		action: [ self reRunRules ];
		icon: (Smalltalk ui icons iconNamed: #refreshIcon)