as yet unclassified
initializeDialogWindow: aWindow
    
    aWindow
		toolbar: OkCancelToolbar new;
		okAction: [ 
			annotation
				ifNil: [ 
					ReNote
						note: description text
						entity: entity ]
				ifNotNil: [
					annotation text: description text ] ].