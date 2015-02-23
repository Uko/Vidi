as yet unclassified
vizIn: composite

	composite roassal2
		title: 'ChangesBrowser ';
		painting: [ :view :changes |
			| elements shape |
			shape := RTBox new
				borderColor: [ :el | el color darker ];
				color: Color white.
			elements := shape elementsOn: (changes).
			view addAll: elements.
			
			RTNest new
				view: view;
				layout: RTGridLayout;
				for: elements add: [ :group :model |
					group addAll: (
						RTBox new
							size: 20;
							"borderWidth: 0.5;"
							borderColor: [ :el | el color darker ];
							elementsOn: model contents)
								@ (RTPopup new text: [ :el | el asString ]) ].
			
			elements @ RTPopup.
			RTRectanglePackLayout on: elements.
			view canvas focusOnCenterScaled ] 
		