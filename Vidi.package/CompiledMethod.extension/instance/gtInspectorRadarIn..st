*vidi
gtInspectorRadarIn: composite
	<gtInspectorPresentationOrder: 40>
	<gtInspectorTag: #vidi>
	composite roassal2 
		title: 'Disorder Radar';
		initializeView: [ ViRTKiviatBuilder new ];
		painting: [ :view |
			view activateAxisTitle.
			view objects: { self }.
			view desactivateHighlight.
			view activatePolygons.
			self reports keys do: [ :rule |
				view addMetric: [ :el | el reports at: rule ] named: rule metricName  ] ]