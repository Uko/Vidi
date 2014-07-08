private
setNewScript
	| view |

	view := R3View new.

	view removeAll.
	view addCameraLight: Color white.
	"view add: (R3DirectionalLight direction: (R3Vector3 newX: 0.0 y: 0.0 z: 2.0) color: Color white)."
	"view add: (R3PointLight position: (R3Vector3 newX: -600 y: 800 z: 1000) color: Color white)."
	
	view addInteraction: R3MKControl.
	
	(CityLayoutXZ2 new on: self cityForR3 brickMode: true) do: [ :building |
		building model class ~= VPackage ifTrue: [ 
			building
				on: R3MouseClickDown
				do: [
					EntityCritics new
						entity: building model mirroredEntity;
						critics: (self rulesByViolator
							at: building model mirroredEntity
							ifAbsent: #());
						openDialogWithSpec ] ].
		
		building
			on: R3MouseEnter
			do: [ :event | 
				infoBar text: building model name.
				self rulesByViolator
					at: building model mirroredEntity
					ifPresent: [ :crit |
						infoBar text:
							infoBar text,
							' | ',
							crit size printString,
							(' violation' asPluralBasedOn: crit) ] ].
		building
			on: R3MouseLeave
			do: [ :event | 
				self resetInfobar ].
		view add: building ].
	
	view
		on: R3MouseClickDown
		do: [ :event |
			Transcript crShow: event element ].
	
	view adjustCamera.
	
	roViz view: view 