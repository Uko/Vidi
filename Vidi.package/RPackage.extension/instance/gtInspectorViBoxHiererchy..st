*Vidi
gtInspectorViBoxHiererchy: composite
	<gtInspectorPresentationOrder: 40>
	<gtInspectorTag: #vidi>
	composite roassal2 
		title: 'Box Hierarchy';
		painting: [ :view |
			| elements shape |
			shape := RTBox new
				borderWidth: [ :el | 1 + (el reports at: ReNumberOfInstanceVariables new) ];
				borderColor: Color black;
				color: Color white.
			elements := shape elementsOn: (self definedClasses reject: #isTrait).
			view addAll: elements.
			
			RTNest new
				view: view;
				layout: RTGridLayout;
				for: elements add: [ :group :model |
					group addAll: (
						RTBox new
							size: 20;
							color: [ :el | Color gray: 1 - (el maxReportResult min: 1) ];
							borderWidth: 0.2;
							borderColor: Color black;
							elementsOn: (model methods sorted: [ :m1 :m2 | 
								m1 cumulativeReportResult > m2 cumulativeReportResult ]))  ].
			
			view elements @ RTPopup.
			RTRectanglePackLayout on: elements.
			view canvas focusOnCenterScaled ]