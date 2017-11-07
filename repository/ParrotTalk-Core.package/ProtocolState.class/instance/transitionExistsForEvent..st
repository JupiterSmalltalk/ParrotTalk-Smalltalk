private
transitionExistsForEvent: event

	self keysDo: [:key | (key = event) ifTrue: [^ true] ].
	^ false