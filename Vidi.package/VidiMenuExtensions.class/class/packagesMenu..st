as yet unclassified
packagesMenu: aBuilder
	<nautilusGlobalPackageMenu>
	| selectedPackages |
	(selectedPackages := aBuilder model selectedPackages)
		ifEmpty: [ ^ aBuilder model ].

	
	(aBuilder item: #'Open ViDI')
		action: [ VidiBrowser openWithAllRulesOnPackages: selectedPackages ];
		order: 3000;
		help: 'Open a Visual Design Inspector on selected packages'