*vidi
gridiPresentationsIn: composite inContext: ilContexto
	composite roassal2 
		title: 'Box Hierarchy';
		painting: [ :view |
			| elements |
			
			elements := RTBox new
				size: 20;
				color: [ :el | Color gray: 1 - ((ilContexto maxReportResultFor: el) min: 1) ];
				borderWidth: 0.2;
				borderColor: Color black;
				elementsOn: (self methods sorted: [ :m1 :m2 | 
					(ilContexto cumulativeReportResultFor: m1) >
					(ilContexto cumulativeReportResultFor: m2) ]).
			view addAll: elements.
			RTGridLayout on: elements.
			
			elements @ RTPopup.
			view canvas focusOnCenterScaled ]