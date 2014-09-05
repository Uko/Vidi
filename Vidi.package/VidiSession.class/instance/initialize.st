as yet unclassified
initialize
	super initialize.
	startTime := DateAndTime now.
	events := OrderedCollection new. 
	packages := Set new.                   