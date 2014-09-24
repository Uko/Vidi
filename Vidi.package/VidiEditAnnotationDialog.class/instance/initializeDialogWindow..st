initialization
initializeDialogWindow: aWindow
    
    aWindow
		toolbar: OkCancelToolbar new;
		okAction: [ 
			annotation
				ifNil: [
					ReNote
						note: description pendingText asString
						entity: entity ]
				ifNotNil: [
					annotation text: description pendingText asString ] ].