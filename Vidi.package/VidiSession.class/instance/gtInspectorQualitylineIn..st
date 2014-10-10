gt
gtInspectorQualitylineIn: composite
	"This provides a list of all events"
	<gtInspectorPresentationOrder: 14>
	self events ifEmpty: [ ^ self ].
	
	composite roassal2
		title: 'Quality';
		painting: [ :view | 
			| lowestq earliest b |
			earliest := self events first timeStamp asSeconds.
			lowestq := (self events detectMin: #quality) quality.
			
			b := RTCharterBuilder new.
			b view: view.
			b extent: 700 @ 300.
			b interaction popupText: #changeTooltip.
			b shape ellipse 
				color: (Color black alpha: 0.1);
				size: [ :ev | ev changeValue / 2 + 5 ].
			b points: self events.
			b allY: [ :ev | ev quality - lowestq + 1 ].
			"b stackX"
			b allX: [ :ev | ev timeStamp asSeconds - earliest ].
			b connectDotColor: Color red.
			b axisConfiguration 
				labelRotation: -20;
				 labelConvertion: [ :sec | 
					String streamContents: [ :s |
						self events first timeStamp + sec asSeconds printHMSOn: s ] ].
			b  axisX.
			b resetAxisConfiguration.
			b axisConfiguration 
				 labelConvertion: [ :qua | 
					(qua - 1 + lowestq) asInteger ].
			b axisY.
			
			view canvas camera focusOnCenterScaled.
			view @ RTHorizontalDraggableView. ]