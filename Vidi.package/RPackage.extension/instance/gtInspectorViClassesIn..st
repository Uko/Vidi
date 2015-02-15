*Vidi
gtInspectorViClassesIn: composite
	<gtInspectorPresentationOrder: 40>
	<gtInspectorTag: #vidi>
	composite roassal2 
		title: 'Viz Classes';
		painting: [ :view |
			| elements shape |
			shape := RTCompositeShape new.
			shape add: (RTBox new
				size: [ :el | el cumulativeReportResult * 0.5 + el averageChildrenResult * 10 ];
				color: Color red).
			shape add: (RTBox new
				size: [ :el | el averageChildrenResult * 10 ];
				color: Color gray).
			elements := shape elementsOn: (self definedClasses reject: #isTrait).
			view addAll: elements.
			elements @ RTPopup.
			RTRectanglePackLayout new
				padding: 0.5; on: elements ]