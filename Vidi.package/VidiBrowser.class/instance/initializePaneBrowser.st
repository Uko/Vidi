initialization
initializePaneBrowser

	paneBrowser script: [ :view |
		RTGridLayout on: (model packages collect: [ :pac |
			| pacEl classes |
			pacEl := RTBox new
				color: Color veryVeryLightGray;
				elementOn: pac.
			
			classes := pac descendents collect: [ :cls |
				| clsEl methods |
				clsEl := RTBox new
					color: Color lightGray;
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
				layout: RTGridLayout new;
				on: pacEl nest: classes.	
			
			view add: pacEl.
			pacEl trachelShape pushBack.
			
			pacEl ]).
		
		view @ RTZoomableView.
		view @ RTDraggableView.
		view elements @ (RTPopup text: [ :ent | ent infoText ] ).
		view canvas color: Smalltalk ui theme backgroundColor.
		view canvas camera focusOnCenterScaled ]