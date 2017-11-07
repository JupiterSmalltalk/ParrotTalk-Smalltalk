private
validateEvent: event

	^ (self transitionExistsForEvent: event)
		ifTrue: [ true ]
		ifFalse: [ (KeyNotFound new key: event) signal ]