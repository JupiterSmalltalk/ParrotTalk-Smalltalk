tests
testStateMap

	| desc state |
	desc := ProtocolStateCompiler initialState: #initial.
	(desc newState: #initial -> (#processInvalidRequest: -> #dead))
		add: #answer -> (nil -> #connected);
		add: #call -> (nil -> #connected).
	(desc newState: #connected -> (nil->nil))
		addInteger: 7 -> (#processBytes: -> #connected);
		addInteger: 16 -> (#processNotMe: -> #dead).
	(desc newState: #dead -> (#processInvalidRequest: -> #dead)).

	state := desc compile.
	self assert: (state isStateNamed: #initial).
	state := state transitionEvent: #call value: nil client: nil.
	self assert: (state isStateNamed: #connected).
	self should: [ state transitionEvent: #NonRegisteredEvent value: nil client: nil ] raise: KeyNotFound.
	self assert: (state isStateNamed: #connected).
	state := state transitionEvent: 16 value: nil client: self.
	self assert: (state isStateNamed: #dead).
