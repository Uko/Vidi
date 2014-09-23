private
interestedIn: ombuEntry 
	| event |
		
	event := ombuEntry content.
	^ event isCodeChange and: [ 
		packages anySatisfy: [ :p |
			p name = event affectedPackageName ] ] 