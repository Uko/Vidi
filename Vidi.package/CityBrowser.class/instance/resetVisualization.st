accessing
resetVisualization
	| view |

	self resetSelection.

	view := R3View new.

	view removeAll.
	view addCameraLight: Color white.
	"view add: (R3DirectionalLight direction: (R3Vector3 newX: 0.0 y: 0.0 z: 2.0) color: Color white)."
	"view add: (R3PointLight position: (R3Vector3 newX: -600 y: 800 z: 1000) color: Color white)."
	
	view addInteraction: R3MKControl.
	
	(CityLayoutXZ2 new on: self cityForR3 brickMode: true) do: [ :building |
		(building model class ~= VPackage and: [ 
		 building model isForeign not ]) ifTrue: [ 
			building
				on: R3MouseClickDown
				do: [ self handleMouseDownOnElement: building ] ].
		
		building
			on: R3MouseEnter
			do: [ :event | 
				infoBar text:
					(self infoTextBlock value: building) ].
		building
			on: R3MouseLeave
			do: [ :event | 
				self resetInfobar ].
		view add: building ].
	
	view
		on: R3MouseClickDown
		do: [ :event | self handleMouseDownOnView: view ].
	
	view adjustCamera.
	
	roViz view: view 