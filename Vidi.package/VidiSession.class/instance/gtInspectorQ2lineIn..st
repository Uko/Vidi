as yet unclassified
gtInspectorQ2lineIn: composite
	"This provides a list of all events"
	<gtInspectorPresentationOrder: 14>
	
	composite roassal2
		title: 'Q2';
		painting: [ :view | 
			| lowestq earliest b series |
			series := (self events groupedBy: [ :ev | ev timeStamp asSeconds roundTo: 60 ])
				associations sorted: [ :fst :snd | fst key < snd key ].
			
			earliest := series first key.
			lowestq := (series collect: [ :s | (s value collect: #quality) average ]) min.
			
			b := RTCharterBuilder new.
			b view: view.
			b extent: 700 @ 300.
			b interaction popup.
			b points: series.
			b connectDotColor: Color red.
			b allY: [ :s | (s value collect: #quality) average - lowestq + 1 ].
			"b allX: [ :ev | ev key - earliest ].
			"b stackX.
			b axisConfiguration 
				labelRotation: -20;
				 labelConvertion: [ :sec | 
					String streamContents: [ :s |
						sec asSeconds ] ].
			b axisX.
			b resetAxisConfiguration.
			b axisConfiguration 
				 labelConvertion: [ :qua | 
					(qua - 1 + lowestq) asInteger ].
			b axisY.
			"b axisXWithNumberOfTicks: self events size."
			"b axisYWithNumberOfTicks: 3."
			
			view canvas camera focusOnCenterScaled.
			view @ RTHorizontalDraggableView. ]