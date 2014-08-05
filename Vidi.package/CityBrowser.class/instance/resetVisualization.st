protocol
resetVisualization
	| view |
	
	view := roViz view.

	view removeAll.
	view addCameraLight: Color white.
	
	view addInteraction: R3MKControl.
	
	view add: (VidiModelElement new
		model: self packagesModel;
		yourself).
	

	
	view adjustCamera.
