menu
worldMenu: aBuilder
	<worldMenu>
	
	(aBuilder item: #'New review session')
		action: [ VidiSessionPackagesSelect new openWithSpec ];
		order: 3000;
		help: 'Start new ViDI session';
		icon: VidiMenuExtensions vidiIcon