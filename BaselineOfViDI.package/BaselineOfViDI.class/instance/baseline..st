as yet unclassified
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec
			package: 'Vidi' with: [ spec requires: #('Renraku' 'Roassal2') ].
		
		spec
      		baseline: 'Renraku' with: [ 
        		spec
            		className: 'BaselineOfRenraku';
               repository: 'github://Uko/Renraku:development' ].

		spec project: 'Roassal2' with: [
			spec
				className: 'ConfigurationOfRoassal2';
				version: #development;
				repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main' ].

		]