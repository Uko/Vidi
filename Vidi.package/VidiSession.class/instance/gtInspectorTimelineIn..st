gt
gtInspectorTimelineIn: composite
	"This provides a list of all events"
	<gtInspectorPresentationOrder: 15>
	|  |
	self events ifEmpty: [ ^ self ].
	
	composite roassal2
		title: 'Timeline';
		painting: [ :view | 
			| b ds |
			
			
			b := RTGrapher new.
			b view: view.
			b extent: 700 @ 300.
			ds := RTStackedDataSet new.
			ds interaction popupText: #changeTooltip.
			ds points: self events.
			ds y: [ :ev | ev changeValue "sqrt" ].
			
			ds barShape rectangle
				color: (Color black alpha: 0.5)";
				width: 700 / self events size - 1".

			
			
			b add: ds.
			
			b axisX 
				labelRotation: -20;
				labelConversion: [ :index | 
					String streamContents: [ :s |
						s nextPut: $(.
						index floor printOn: s.
						s nextPut: $); space.
						(self events at: ((index isZero
							ifTrue: [ 1 ]
							ifFalse: [ index ]) min: self events size) ) timeStamp printHMOn: s ] ].

			b axisY.
			
			b build.
			
			view canvas camera focusOnCenterScaled.
			view @ RTHorizontalDraggableView. ]