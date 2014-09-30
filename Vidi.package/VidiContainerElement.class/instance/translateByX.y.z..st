action
translateByX: newX y: newY z: newZ

	
	super translateByX: newX y: newY z: newZ.
	
	descendents do: [ :d |
		d translateByX: newX y: newY z: newZ ]	