visualization
ro3View
	"self ro3View openWithOverlay"
	| view |

	view := R3View new.
	
	"remove default camera light"
	view removeAll.
	
	"add own light"
	view add: (R3PointLight position: (R3Vector3 newX: (-600) y: 800 z: (-1000)) color: Color white).
	
	view addInteraction: R3MKControl.
	
	(CityLayoutXZ2 new on: self cityForR3 brickMode: true) do: [ :building |
		building addInteraction: R3Popup.
		view add: building.
	].
 
	view setRoassal2DView: RTView new.
	
	^ view