*vidi
gtInspectorViMethodsListIn: composite
	<gtInspectorPresentationOrder: 40>
	<gtInspectorTag: #vidi>
	composite roassal2 
		title: 'Methods List';
		initializeView: [ RTStackBarPlot new ];
		painting: [ :view |
			| rules   |
			view interaction popupText.
			rules := { ReNumberOfStatements . ReNumberOfParameters . ReNumberOfTemporaries }
				collect: #new.
			"b colorPalette colors: { Color blue . Color lightBlue }."
			(self methods sorted: [ :m1 :m2 |
				m1 cumulativeReportResult > m2 cumulativeReportResult ]) do: [ :m |
					view add: (rules collect: [ :r |
						m reports at: r ifAbsent: [ 0 ] ]) title: m selector asString ].
					
					view addLegend: (rules collect: #metricName).
					view barWidth: 260 height: 20.	

					view
						addLabelToBars: [ :assoc | assoc key round: 2 ]
						if: [ :assoc | assoc key >= 0.35 ].
						
					view view @ RTZoomableView  ]