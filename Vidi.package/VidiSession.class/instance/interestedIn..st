private
interestedIn: ombuEntry 
		| event |
		
		event := ombuEntry content.
		^ ((ombuEntry tags at: #time) > startTime and:
			[ event isCodeChange and: [ 
			 packages anySatisfy: [ :p |
				p name = event affectedPackageName ] ] ])