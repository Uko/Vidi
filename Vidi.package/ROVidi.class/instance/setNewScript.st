private
setNewScript

	roViz script: [ :view |
		view removeAll.
		view add: (R3PointLight position: (R3Vector3 newX: -600 y: 800 z: 1000) color: Color white).
	
		view addInteraction: R3MKControl.
	
		(CityLayoutXZ2 new on: self cityForR3 brickMode: true) do: [ :building |
			"building addInteraction: R3BrowseOnClick."
			building model class ~= VPackage ifTrue: [ 
				building
					on: R3MouseClickDown
					do: [
						itemTitle text: building model mirroredEntity name.
						browseButton action: [ building model mirroredEntity browse ].
						critList items:
							(self rulesByViolator
								at: building model mirroredEntity
								ifAbsent: #()).
						codePane text: building model mirroredEntity sourceCode ] ].
			
			building
				on: R3MouseEnter
				do: [ :event | 
					infoBar text:
						building model printString,
						' | ',
						(self rulesByViolator
							at: building model mirroredEntity
							ifAbsent: #()) size printString,
							' violations' ].
			building
				on: R3MouseLeave
				do: [ :event | 
					self resetInfobar ].
			view add: building ].
		
		view
			on: R3MouseClickDown
			do: [ :event |
				Transcript crShow: event element ].
		
		view adjustCamera ]