private
maxViolations
	^ maxViolations ifNil: [ maxViolations := self rulesByViolator detectMax: #size ]