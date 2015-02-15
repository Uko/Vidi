as yet unclassified
packagesMenu: aBuilder
	<nautilusGlobalPackageMenu>
	| selectedPackages |
	(selectedPackages := aBuilder model selectedPackages)
		ifEmpty: [ ^ aBuilder model ].

	
	(aBuilder item: #'Open GiDI')
		action: [ VidiInspector inspect: selectedPackages anyOne ];
		order: 2999;
		help: 'Open a (GT) ViDi Inspector on the selected package'
		"icon: self vidiIcon"