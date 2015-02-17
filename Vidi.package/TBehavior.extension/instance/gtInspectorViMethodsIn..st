*vidi
gtInspectorViMethodsIn: composite
	<gtInspectorPresentationOrder: 40>
	<gtInspectorTag: #vidi>
	composite roassal2 
		title: 'Viz Methods';
		painting: [ :view |
			| elements shape |
			shape := RTCompositeShape new.
			shape add: (RTBox new
				size: [ :el | el maxReportResult * 10 ];
				color: Color white darker darker).
			shape add: (RTBox new
				size: [ :el | el averageReportResult * 10  ];
				color: Color gray).
			
			elements := shape elementsOn: (self methods).
			view addAll: elements.
			elements @ (RTPopup new text: #selector).
			RTRectanglePackLayout new
				padding: 0.5; on: elements.
			view canvas focusOnCenterScaled ]