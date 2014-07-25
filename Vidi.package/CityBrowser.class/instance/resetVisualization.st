protocol
resetVisualization
	| view |

	view := R3View new.

	view removeAll.
	view addCameraLight: Color white.
	
	view addInteraction: R3MKControl.
	
	view add: (VidiModelElement new
		model: self packagesModel;
		yourself).
	
	"(CityLayoutXZ2 new on: self cityForR3 brickMode: true) do: [ :building |
		(building model class ~= RePackage and: [ 
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
		view add: building ]."
	
	view
		on: R3MouseClickDown
		do: [ :event | self handleMouseDownOnView: view ].
	
	view adjustCamera.
	
	roViz view: view 