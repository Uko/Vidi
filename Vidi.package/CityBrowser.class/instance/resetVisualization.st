protocol
resetVisualization
	| view |
	
	view := roViz view.

	view removeAll.
	view addCameraLight: Color white.
	
	view add: (VidiModelElement new
		model: self packagesModel;
		yourself).
		
	view adjustCamera.

	view addInteraction: R3MKControl.