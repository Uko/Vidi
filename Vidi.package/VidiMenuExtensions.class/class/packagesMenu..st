menu
packagesMenu: aBuilder
	<nautilusGlobalPackageMenu>
	| selectedPackages |
	(selectedPackages := aBuilder model selectedPackages)
		ifEmpty: [ ^ aBuilder model ].

	
	(aBuilder item: #'Open ViDI')
		action: [ 
			[ (ReModel withAllLintRulesForPackages: selectedPackages) vidi openWithSpec] fork ];
		order: 3000;
		help: 'Open a Visual Design Inspector on selected packages';
		icon: self vidiIcon