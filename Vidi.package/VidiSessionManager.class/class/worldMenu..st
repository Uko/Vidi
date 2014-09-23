as yet unclassified
worldMenu: aBuilder
	<worldMenu>
	
	(aBuilder item: #'Browse sessions')
		action: [ GTInspector inspect: VidiSessionManager ];
		order: 3001;
		withSeparatorAfter;
		help: 'Browse sessions';
		icon: VidiMenuExtensions vidiIcon