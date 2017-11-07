control
shutdown

	stack ifNotNil: [:sesh | sesh shutdown].
	self releaseActionMap.
