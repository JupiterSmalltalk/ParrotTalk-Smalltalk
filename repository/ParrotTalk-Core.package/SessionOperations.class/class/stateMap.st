class initialization
stateMap
	"(((SessionOperations stateMap compile)))"

	| desc |
	desc := ProtocolStateCompiler initialState: #initial.
	(desc newState: #initial -> (#processInvalidRequest: -> #dead))
		add: #answer -> (nil -> #receivingExpectProtocolOffered);
		add: #call -> (nil -> #receivingExpectProtocolAccepted).
	(desc newState: #connected -> (#processInvalidRequest: -> #dead))
		addInteger: 7 -> (#processBytes: -> #connected).
	(desc newState: #dead -> (#processInvalidRequest: -> #dead)).

	(desc newState: #receivingExpectProtocolOffered -> (#processInvalidRequest: -> #dead))
		addInteger: 1 -> (#processProtocolOffered: -> #receivingExpectIWant).
	(desc newState: #receivingExpectIWant -> (#processInvalidRequest: -> #dead))
		addInteger: 8 -> (#processIWant: -> #receivingExpectGiveInfo).
	(desc newState: #receivingExpectGiveInfo -> (#processInvalidRequest: -> #dead))
		addInteger: 10 -> (#processGiveInfo: -> #receivingExpectGo);
		addInteger: 14 -> (#processDuplicateConnection: -> #dead);
		addInteger: 15 -> (#processNotMe: -> #dead).
	(desc newState: #receivingExpectGo -> (#processInvalidRequest: -> #dead))
		addInteger: 12 -> (#processGo: -> #connected);
		addInteger: 14 -> (#processDuplicateConnection: -> #dead).

	(desc newState: #receivingExpectProtocolAccepted -> (#processInvalidRequest: -> #dead))
		addInteger: 3 -> (#processProtocolAccepted: -> #receivingExpectIAm).
	(desc newState: #receivingExpectIAm -> (#processInvalidRequest: -> #dead))
		addInteger: 9 -> (#processIAm: -> #receivingExpectReplyInfo);
		addInteger: 14 -> (#processDuplicateConnection: -> #dead);
		addInteger: 15 -> (#processNotMe: -> #dead).
	(desc newState: #receivingExpectReplyInfo -> (#processInvalidRequest: -> #dead))
		addInteger: 11 -> (#processReplyInfo: -> #receivingExpectGoToo);
		addInteger: 14 -> (#processDuplicateConnection: -> #dead).
	(desc newState: #receivingExpectGoToo -> (#processInvalidRequest: -> #dead))
		addInteger: 13 -> (#processGoToo: -> #connected).
	^desc.
