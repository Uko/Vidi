initialization
initializePaneBrowser

	paneBrowser script: [ :view |
		(RTRectanglePackLayout new padding: 2) on: (model packages collect: [ :pac |
			| pacEl classes |
			pacEl := (RTBox new
				color: Color veryVeryLightGray;
				yourself)
				elementOn: pac.
			
			classes := pac descendents collect: [ :cls |
				| clsEl methods |
				clsEl := (RTBox new
					color: Color lightGray;
					yourself)
					elementOn: cls.
			
				methods := RTBox elementsOn: cls descendents.
			
				RTNest new 
					layout: RTGridLayout new;
					on: clsEl nest: methods.	
			
				view
					add: clsEl;
					addAll: methods.
			
				clsEl ].
			
			RTNest new 
				layout: (RTRectanglePackLayout new padding: 2);
				on: pacEl nest: classes.	
			
			view add: pacEl.
			pacEl trachelShape pushBack.
			
			pacEl ]).
		
		view @ RTZoomableView.
		view @ RTDraggableView.
		view elements @ (RTPopup text: [ :ent | ent infoText ] ).
		view canvas color: Smalltalk ui theme backgroundColor.
		view canvas camera focusOnCenterScaled ]