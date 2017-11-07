actions
transitionEvent: event value: value client: client

	| transition action toState |
	self validateEvent: event.
	transition := self transitionAt: event.
	action := transition key.
	toState := transition value.
	action isNil ifFalse: [client perform: action with: value].
	toState
		ifNil: [(KeyNotFound key: toState) signal]
		ifNotNil: [^toState]
