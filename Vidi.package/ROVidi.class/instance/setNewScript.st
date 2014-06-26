private
setNewScript

	roViz script: [ :view |
		view removeAll.
		view add: (R3PointLight position: (R3Vector3 newX: -600 y: 800 z: 1000) color: Color white).
	
		view addInteraction: R3MKControl.
	
		(CityLayoutXZ2 new on: self cityForR3 brickMode: true) do: [ :building |
			building
				addInteraction: R3Popup;
				addInteraction: R3BrowseOnClick.
			view add: building ].
		view adjustCamera ]