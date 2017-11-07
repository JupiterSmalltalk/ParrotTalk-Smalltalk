control
transitionEvent: event frame: frame

	| newState |
	newState := currentState transitionEvent: event value: frame client: self.
	(newState ~= currentState)
		ifTrue: [ currentState := newState. ^ true]
		ifFalse: [^ false]