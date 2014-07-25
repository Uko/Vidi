accessing
translateToX: newX y: newY z: newZ

	| dist |
	dist := (R3Vector3 x: newX y: newY z: newZ) - position.
	
	super translateToX: newX y: newY z: newZ.
	
	descendents do: [ :d |
		d translateBy: dist ]	