accessing
view: aR3View
	super view: aR3View.
	descendents do: [ :d | aR3View add: d ]