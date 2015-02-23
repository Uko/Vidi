as yet unclassified
packagesMenu: aBuilder
	<nautilusGlobalPackageMenu>
	| selectedPackages |
	(selectedPackages := aBuilder model selectedPackages)
		ifEmpty: [ ^ aBuilder model ].

	
	(aBuilder item: #'Open Difi')
		action: [ Difi workingCopyStatusFor: selectedPackages anyOne ];
		order: 2998;
		help: 'Open a Difi on the selected package'
		"icon: self vidiIcon"