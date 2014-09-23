as yet unclassified
gtInspectorQualitylineIn: composite
	"This provides a list of all events"
	<gtInspectorPresentationOrder: 14>
	
	composite roassal2
		title: 'Quality';
		painting: [ :view | 
			| earliest b |
			earliest := ((self events detectMin: #timeStamp) timeStamp) asSeconds.
			
			b := RTCharterBuilder new.
			b view: view.
			b extent: 400 @ 300.
			b interaction popup.
			b points: self events.
			b connectDot.
			b allY: #quality.
			b allX: [ :ev | ev timeStamp asSeconds - earliest ].
			"b stackX."
			
			"b axisXWithNumberOfTicks: self events size."
			"b axisYWithNumberOfTicks: 3."
			
			view canvas camera focusOnCenterScaled.
			view @ RTHorizontalDraggableView.  ]